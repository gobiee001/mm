"""Test package bootstrap.

Puts the directory *containing* ``python_gym_Wrapper`` on ``sys.path`` so the
tests can use absolute imports regardless of how discovery was invoked --
including the bare form::

    python -m unittest discover -s <...>/python_gym_Wrapper -p "test_*.py"

which otherwise sets the top-level dir to the package itself and breaks its
relative imports.
"""

import os
import sys

_PKG = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
_PARENT = os.path.dirname(_PKG)
if _PARENT not in sys.path:
    sys.path.insert(0, _PARENT)
