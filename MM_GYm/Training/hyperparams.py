"""Default hyperparameters for PPO training on the Mini Militia environment.

Every value in this module is overridable from the ``train_ppo.py`` command line.
The module exists so there is exactly one place that documents *why* each default
is what it is -- the reasoning matters more than the numbers, because this
environment breaks several assumptions baked into Stable-Baselines3's defaults.

Throughput is the binding constraint
------------------------------------
One ``env.step()`` is a single *blocking* Frida RPC into a live Android game
process, and it covers ``frame_skip`` physics ticks of an engine running at
roughly 60 Hz. Measured throughput is therefore only about **3-10 environment
steps per second** -- four orders of magnitude slower than a MuJoCo or Atari
setup. That inverts the usual tuning priority: the quantity to minimise is
wall-clock time per gradient update, not sample count. Concretely, it is why
``N_STEPS`` is 512 rather than SB3's 2048 (which would mean 5-10 minutes of
staring at a console between updates), and why ``MAX_EPISODE_STEPS`` defaults
below the environment's own 1000.

Normalisation is already handled upstream
-----------------------------------------
``ObservationEncoder`` emits observations already normalised and clipped to
[-10, 10], and ``RewardCalculator`` already clips reward to [-10, 10] on a scale
where a typical step lands in [-1, 1]. So there is deliberately no
``VecNormalize`` in the training stack -- see the note in ``train_ppo.py``.
"""

from __future__ import annotations

from typing import Callable, Dict, List, Optional

# --- Rough throughput estimate, used only to print human-readable ETAs --------
# Not a tuning knob. Soft-sync against a 60 Hz engine with frame_skip=10 gives a
# theoretical ceiling of ~6 steps/s; RPC overhead pulls the realised figure down.
EXPECTED_STEPS_PER_SECOND: float = 5.0


# =============================================================================
# PPO
# =============================================================================

POLICY: str = "MlpPolicy"
"""The observation is a flat 58-element float vector, so there is nothing for a
CNN to exploit. MlpPolicy is the right and only sensible choice."""

NET_ARCH: Dict[str, List[int]] = {"pi": [128, 128], "vf": [128, 128]}
"""Two hidden layers of 128 units for both actor and critic. Generously sized
for a 58 -> 5 mapping, while still small enough to stay fast on CPU."""

TORCH_DEVICE: str = "cpu"
"""CPU is genuinely faster than GPU for a network this small -- the per-batch
host/device transfer costs more than the matmuls save. SB3 emits its own warning
if you force MlpPolicy onto CUDA."""

N_STEPS: int = 512
"""Rollout length per policy update. At ~5 steps/s this is an update roughly
every 1-2 minutes. SB3's 2048 default would stretch that to 5-10 minutes, which
makes the run painful to supervise and slows early iteration on the reward."""

BATCH_SIZE: int = 64
"""Divides N_STEPS evenly into 8 minibatches per epoch."""

N_EPOCHS: int = 10
"""SB3's default. Samples are expensive here, so squeezing several passes out of
each rollout is worth the extra off-policy drift."""

LEARNING_RATE: float = 3e-4
"""SB3's default, and a reliable starting point for PPO on continuous control.
Pass ``--lr-schedule linear`` to decay it to zero across the run instead."""

GAMMA: float = 0.99
"""One step covers frame_skip=10 ticks, i.e. ~0.167 s of game time, so gamma=0.99
gives an effective horizon of ~100 steps ~= 17 seconds. That is about the length
of a firefight -- long enough to credit a kill to the approach that set it up,
short enough not to smear reward across unrelated engagements."""

GAE_LAMBDA: float = 0.95
"""SB3's default bias/variance tradeoff for advantage estimation."""

CLIP_RANGE: float = 0.2
"""SB3's default PPO trust region."""

ENT_COEF: float = 0.005
"""Deliberately non-zero, unlike SB3's 0.0 default. With no entropy bonus the
Gaussian over this 5-dimensional continuous action space tends to collapse early
-- the agent commits to one aim/shoot pattern and stops probing alternatives.
A small bonus keeps the distribution alive without drowning the reward signal."""

VF_COEF: float = 0.5
MAX_GRAD_NORM: float = 0.5
"""Kept at SB3's default despite the +/-10 reward clip: an outlier step can still
be ten times a typical one, and clipping the gradient norm is what stops that
single step from wrecking the policy."""

TARGET_KL: Optional[float] = None
"""Early-stop PPO's epoch loop once the approximate KL exceeds this. Left at
SB3's default (off) so the algorithm behaves as documented, but ``0.03`` is
genuinely worth setting here: one rollout costs minutes of wall clock, so a
single destructive update is expensive to recover from, and this caps the damage
without discarding the rollout."""

LOG_STD_INIT: float = -1.0
"""Initial log standard deviation of the Gaussian policy, below SB3's 0.0 default.

The most consequential non-default value in this file. SB3's default gives
sigma = 1.0 per dimension on an action space bounded at [-1, 1], and
``collect_rollouts`` hard-clips each sample into that box before applying it. At
sigma = 1 a large share of samples in every dimension land outside and are
clipped, so early training emits near bang-bang actions, ``aim_x``/``aim_y``
jitter violently, and the policy gradient is taken with respect to an action that
was never actually applied. exp(-1) ~= 0.37 keeps most samples inside the box
while still exploring properly."""

STATS_WINDOW_SIZE: int = 100
"""Length of ``model.ep_info_buffer``, the window behind SB3's own
``rollout/ep_rew_mean``. The callbacks track episode returns themselves (SB3
updates this buffer *after* invoking callbacks, so inside a callback it is always
one episode stale), but the teardown path falls back to it, so it is kept
>= BEST_WINDOW to cover the same span."""

USE_SDE: bool = False
"""gSDE (state-dependent exploration) produces smoother action sequences, which
often helps on real hardware. It is off by default because the ``shoot``
dimension is effectively binary (thresholded at 0), and gSDE's smooth noise
interacts awkwardly with a hard threshold. ``--use-sde`` enables it."""

TOTAL_TIMESTEPS: int = 200_000
"""At ~5 steps/s this is roughly 11 hours of wall clock. Sized as a
"leave it running overnight" default, not as a convergence guarantee."""


# =============================================================================
# Environment
# =============================================================================

FRAME_SKIP: int = 10
"""Physics ticks each action is held for. Matches the environment's own default."""

MAX_EPISODE_STEPS: int = 300
"""Below the environment's own 1000-step default, on purpose. At ~5 steps/s, 1000
steps is >3 minutes per episode, so the 20-episode best-model window would take
over an hour to fill before the tracker even arms. 300 steps is ~1 minute per
episode, filling the window in ~20 minutes."""

GAME_SPEED: float = 1.0
"""Timescale multiplier. Leave at 1.0 unless ``demo.py --probe-timescale`` has
confirmed on your build that raising it adds ticks rather than inflating dt --
if it inflates dt, the physics integrate differently and a policy trained at 2.0x
will not transfer back to 1.0x."""

MAX_ENEMIES: int = 5
"""Enemy slots in the observation. Changing this changes the observation shape,
which makes previously saved checkpoints unloadable."""

WEAPON: str = "uzi"
"""Spawn weapon. Must be a key of ``python_gym_Wrapper.config.WEAPON_TYPES``."""

DISABLE_RENDERING: bool = True
"""Turn the *game's* own rendering off during training for the throughput win.
Unrelated to the Gym ``render_mode``, which stays None while training."""


# =============================================================================
# Checkpointing and logging
# =============================================================================

SAVE_INTERVAL_MINUTES: float = 5.0
"""Wall-clock interval for the rolling checkpoint. Time-based rather than
step-based because throughput varies with whatever the game is doing, so a
step-based interval would produce wildly uneven spacing in real time."""

KEEP_CHECKPOINTS: int = 20
"""Rolling window size: the newest N timed checkpoints survive, older ones are
deleted as new ones land."""

TOP_K: int = 5
"""How many best-reward models to retain, ranked and pruned independently of the
rolling window."""

BEST_WINDOW: int = 20
"""Number of recent episodes averaged into the score that ranks the best models.
A rolling mean rather than a single episode return, so one lucky spawn cannot
occupy a top-K slot ahead of a genuinely better policy."""

BEST_MIN_EPISODES: int = 5
"""Episodes that must complete before the best-model tracker arms. Prevents a
half-full window from setting a high-water mark no later policy can beat."""

LOG_INTERVAL: int = 1
"""Rollouts between logger dumps. 1 means every update writes a row, which is
what makes the custom metrics show up promptly in TensorBoard."""


# =============================================================================
# Helpers
# =============================================================================

def linear_schedule(initial_value: float) -> Callable[[float], float]:
    """Return an SB3 learning-rate schedule that decays linearly to zero.

    SB3 calls the schedule with ``progress_remaining``, which runs from 1.0 at
    the start of training down to 0.0 at ``total_timesteps``. Multiplying the
    initial value by it therefore anneals the rate to zero over the run.

    Args:
        initial_value: Learning rate at the start of training.

    Returns:
        A callable suitable for PPO's ``learning_rate`` argument.
    """

    def schedule(progress_remaining: float) -> float:
        return initial_value * progress_remaining

    return schedule


def net_arch_from_string(spec: str) -> Dict[str, List[int]]:
    """Parse a ``"128,128"`` style CLI string into an SB3 ``net_arch`` dict.

    The same widths are used for both the policy and the value network, which is
    the usual arrangement and keeps the flag down to a single value.

    Args:
        spec: Comma-separated positive integers, e.g. ``"256,256"``.

    Returns:
        ``{"pi": [...], "vf": [...]}``.

    Raises:
        ValueError: If the spec is empty or contains a non-positive width.
    """
    widths = [int(part) for part in spec.split(",") if part.strip()]
    if not widths:
        raise ValueError(f"net-arch must list at least one layer width, got {spec!r}")
    if any(w < 1 for w in widths):
        raise ValueError(f"net-arch layer widths must be >= 1, got {spec!r}")
    return {"pi": list(widths), "vf": list(widths)}
