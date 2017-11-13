"""Use Mayapy for testing

Usage:
    $ mayapy run_tests.py

"""

import os
import sys
import nose
import logging
import contextlib

import six

from maya import standalone
from nose_exclude import NoseExclude


def null(*args, **kwargs):
    pass


@contextlib.contextmanager
def mute():
    try:
        sys.stdout = six.moves.StringIO()
        sys.stderr = six.moves.StringIO()
        yield

    finally:
        sys.stdout = sys.__stdout__
        sys.stderr = sys.__stderr__


if __name__ == "__main__":
    # Expose mgear Python package to tests
    dirname = os.path.dirname(__file__)
    sys.path.insert(0, os.path.join(dirname, "scripts"))

    print("\n" + "-" * 70)
    print("Initialising Maya..")

    with mute():
        standalone.initialize()
        import pymel.core
        import pymel.internal.startup
        pymel.internal.startup.fixMayapy2011SegFault()

    for name, logger in logging.Logger.manager.loggerDict.items():
        if "pymel" in name:
            logger.disabled = True

    argv = sys.argv[:]
    argv.extend([

        # Sometimes, files from Windows accessed
        # from Linux cause the executable flag to be
        # set, and Nose has an aversion to these
        # per default.
        "--exe",

        # Produce nice, easily readable output from each test
        "--verbose",

        # Run through the docstring of every module
        # and run anything prefixed with ">>> "
        "--with-doctest",

        # Produce a coverage report post-tests
        "--with-coverage",
        "--cover-html",
        "--cover-tests",
        "--cover-erase",

        "--exclude-dir=cvwrap",
        "--exclude-dir=docs",
        "--exclude-dir=excons",
        "--exclude-dir=src",

        "tests",
        "scripts",
    ])

    # Visually separate output from the above Maya initialisation
    # and the actual tests.
    # TODO: Mute Maya output entirely; I don't know how it manages to still
    # output anything when sys.stdout and err are discarded..
    print("\n" + "-" * 70)
    print("Running tests..\n")

    try:
        # Disable messages via PyMEL, they obfuscate the report
        pymel.core.displayWarning = null
        pymel.core.displayError = null

        nose.main(argv=argv, addplugins=[NoseExclude()])

    finally:
        # Only bother when running when on Travis
        if os.getenv("TRAVIS_JOB_ID"):
            __import__("coveralls").wear()
        else:
            sys.stdout.write("Skipping coveralls\n")
