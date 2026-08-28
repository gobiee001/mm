"""Unit tests for the Training package multi-environment / multi-device support."""

import unittest
from pathlib import Path
import tempfile
import shutil
import sys

from Training import hyperparams as hp
from Training.adb_utils import parse_adb_devices_output
from Training.run_manager import RunPaths, format_reward, checkpoint_filename, best_filename
from Training.train_ppo import parse_args, build_config, make_env, build_model
from Training.callbacks import EpisodeReturnTracker


class TestAdbUtils(unittest.TestCase):
    def test_parse_adb_devices_output(self):
        sample_output = """List of devices attached
emulator-5554	device
emulator-5556	device
R58M1234XYZ	device
192.168.1.50:5555	unauthorized
offline-device	offline
"""
        serials = parse_adb_devices_output(sample_output)
        self.assertEqual(serials, ["emulator-5554", "emulator-5556", "R58M1234XYZ"])


class TestResolveHosts(unittest.TestCase):
    def test_single_default_host(self):
        hosts, serials = hp.resolve_hosts(None, base_host="127.0.0.1:27042", num_envs=1)
        self.assertEqual(hosts, ["127.0.0.1:27042"])
        self.assertEqual(serials, [""])

    def test_auto_increment_ports(self):
        hosts, serials = hp.resolve_hosts(None, base_host="127.0.0.1:27042", num_envs=3)
        self.assertEqual(hosts, ["127.0.0.1:27042", "127.0.0.1:27043", "127.0.0.1:27044"])
        self.assertEqual(serials, ["", "", ""])

    def test_explicit_hosts_list(self):
        hosts, serials = hp.resolve_hosts(["127.0.0.1:27042", "192.168.1.10:27042"])
        self.assertEqual(hosts, ["127.0.0.1:27042", "192.168.1.10:27042"])

    def test_explicit_hosts_comma_separated(self):
        hosts, serials = hp.resolve_hosts("127.0.0.1:27042, 127.0.0.1:27043, 127.0.0.1:27044")
        self.assertEqual(hosts, ["127.0.0.1:27042", "127.0.0.1:27043", "127.0.0.1:27044"])

    def test_mock_hosts(self):
        hosts, serials = hp.resolve_hosts(None, num_envs=3, is_mock=True)
        self.assertEqual(hosts, ["mock:0", "mock:1", "mock:2"])
        self.assertEqual(serials, ["mock_0", "mock_1", "mock_2"])


class TestRunPaths(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def test_monitor_csv_single_and_multi(self):
        paths = RunPaths(
            run_name="test_run",
            logs_dir=Path(self.tmp) / "logs",
            run_dir=Path(self.tmp) / "models" / "test_run",
            checkpoints_dir=Path(self.tmp) / "models" / "test_run" / "checkpoints",
            best_dir=Path(self.tmp) / "models" / "test_run" / "best",
        )
        self.assertEqual(paths.monitor_csv_for(0, 1).name, "monitor.csv")
        self.assertEqual(paths.monitor_csv_for(0, 3).name, "monitor_0.csv")
        self.assertEqual(paths.monitor_csv_for(1, 3).name, "monitor_1.csv")
        self.assertEqual(paths.monitor_csv_for(2, 3).name, "monitor_2.csv")


class TestMultiEnvConstruction(unittest.TestCase):
    def test_make_env_mock_dummy(self):
        args = parse_args(["--mock", "--num-envs", "2", "--vec-env-type", "dummy"])
        with tempfile.TemporaryDirectory() as tmp:
            paths = RunPaths(
                run_name="test_run",
                logs_dir=Path(tmp) / "logs",
                run_dir=Path(tmp) / "models" / "test_run",
                checkpoints_dir=Path(tmp) / "models" / "test_run" / "checkpoints",
                best_dir=Path(tmp) / "models" / "test_run" / "best",
            )
            vec_env, configs, hosts, serials = make_env(args, paths)
            self.assertEqual(vec_env.num_envs, 2)
            self.assertEqual(len(configs), 2)
            self.assertEqual(len(hosts), 2)
            self.assertEqual(len(serials), 2)

            obs = vec_env.reset()
            self.assertEqual(obs.shape[0], 2)
            actions = [vec_env.action_space.sample() for _ in range(2)]
            next_obs, rews, dones, infos = vec_env.step(actions)
            self.assertEqual(len(rews), 2)
            self.assertEqual(len(infos), 2)
            vec_env.close()

    def test_make_env_mock_subproc(self):
        args = parse_args(["--mock", "--num-envs", "2", "--vec-env-type", "subproc"])
        with tempfile.TemporaryDirectory() as tmp:
            paths = RunPaths(
                run_name="test_run",
                logs_dir=Path(tmp) / "logs",
                run_dir=Path(tmp) / "models" / "test_run",
                checkpoints_dir=Path(tmp) / "models" / "test_run" / "checkpoints",
                best_dir=Path(tmp) / "models" / "test_run" / "best",
            )
            vec_env, configs, hosts, serials = make_env(args, paths)
            self.assertEqual(vec_env.num_envs, 2)
            self.assertEqual(len(configs), 2)
            self.assertEqual(len(hosts), 2)
            self.assertEqual(len(serials), 2)

            obs = vec_env.reset()
            self.assertEqual(obs.shape[0], 2)
            actions = [vec_env.action_space.sample() for _ in range(2)]
            next_obs, rews, dones, infos = vec_env.step(actions)
            self.assertEqual(len(rews), 2)
            self.assertEqual(len(infos), 2)
            vec_env.close()


if __name__ == "__main__":
    unittest.main()
