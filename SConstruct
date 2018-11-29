import os
import sys
import excons
import excons.config
import excons.tools.maya as maya


maya.SetupMscver()
env = excons.MakeBaseEnv()


version = (3, 0, 0)
versionstr = "%d.%d.%d" % version
platname = {"win32": "windows", "darwin": "osx"}.get(sys.platform, "linux")
outprefix = "platforms/%s/%s/%s/plug-ins" % (maya.Version(nice=True), platname, excons.arch_dir)

outdir = excons.OutputBaseDirectory()

gen = excons.config.AddGenerator(env, "mgear", {"MGEAR_VERSION": "[%d, %d, %d]" % version,
                                                "MGEAR_MAJMIN_VERSION": "%d.%d" % (version[0], version[1])})

mgearinit = gen("framework/scripts/mgear/__init__.py", "framework/scripts/mgear/__init__.py.in")
mgearmod = gen("mGear.mod", "mGear.mod.in")
mgearpy = filter(lambda x: not os.path.basename(x).startswith("__init__.py"), excons.glob("scripts/mgear/*"))
qtpy = ["Qtdotpy/Qt.py"]
NoClean(mgearinit + mgearmod)

defines = []
if sys.platform == "win32":
    defines.append("NOMINMAX")


def maya_math_nodes_setup(env):
    env.Append(CPPDEFINES=[('NODE_NAME_PREFIX', '\"\\\"math_\\\"\"')])
    env.Append(CCFLAGS=["-Os"])
    env.Append(CPPFLAGS=" -DPROJECT_VERSION=\"\\\"1.4.0\\\"\"")


def CVWrapSetup(env):
    if sys.platform == "win32":
        env.Append(CCFLAGS=["/arch:AVX"])
    else:
        env.Append(CCFLAGS=["-mavx"])


targets = [
    {
        "name": "mgear_core",
        "type": "install",
        "desc": "mgear core python modules",
        "install": {"scripts": excons.glob("framework/scripts/*.py"),
                    "scripts/mgear": mgearpy + mgearinit,
                    "scripts/mgear/": excons.glob("framework/scripts/mgear/menu.py"),
                    "scripts/mgear/vendor/": excons.glob("framework/scripts/mgear/vendor/*.py"),
                    "scripts/mgear/vendor": qtpy,
                    "scripts/mgear/core": excons.glob("framework/mgear_core/script/mgear/core/*"),
                    "scripts/mgear/crank": excons.glob("framework/cranck/script/mgear/crank/*"),
                    "scripts/mgear/animbits": excons.glob("framework/animbits/script/mgear/animbits/*"),
                    "scripts/mgear/rigbits": excons.glob("framework/rigbits/script/mgear/rigbits/*"),
                    "scripts/mgear/simpleRig": excons.glob("framework/simpleRig/script/mgear/simpleRig/*"),
                    "scripts/mgear/synoptic": excons.glob("framework/synoptic/script/mgear/synoptic/*"),
                    "scripts/mgear/shifter": excons.glob("framework/shifter/script/mgear/shifter/*"),
                    "scripts/mgear/flex": excons.glob("framework/flex/script/mgear/flex/*"),
                    "scripts/mgear/shifter_classic_components": excons.glob("framework/shifter_classic_components/script/mgear/shifter_classic_components/*"),
                    "": mgearmod}
    },
    {
        "name": "cvwrap",
        "type": "dynamicmodule",
        "desc": "wrap deformer plugin",
        "prefix": outprefix,
        "bldprefix": maya.Version(),
        "ext": maya.PluginExt(),
        "defs": defines,
        "incdirs": ["src"],
        "srcs": excons.glob("plugins/cvwrap/src/*.cpp"),
        "custom": [maya.Require, CVWrapSetup],
        "libs": ([] if maya.Version(asString=False) < 201600 else ["clew"]),
        "install": {"scripts": excons.glob("plugins/cvwrap/scripts/*")}
    },
    {
        "name": "mgear_solvers",
        "type": "dynamicmodule",
        "desc": "mgear solvers plugin",
        "prefix": outprefix,
        "bldprefix": maya.Version(),
        "ext": maya.PluginExt(),
        "defs": defines,
        "incdirs": ["plugins/mgear_solvers/src"],
        "srcs": excons.glob("plugins/mgear_solvers/src/*.cpp"),
        "custom": [maya.Require]
    },
    {
        "name": "maya-math-nodes",
        "type": "dynamicmodule",
        "desc": "math nodes plugin",
        "prefix": outprefix,
        "bldprefix": maya.Version(),
        "ext": maya.PluginExt(),
        "defs": defines,
        "incdirs": ["plugins/src"],
        "srcs": excons.glob("plugins/maya-math-nodes/src/*.cpp"),
        "custom": [maya.Require, maya_math_nodes_setup]
    },
    {
        "name": "grim_IK",
        "type": "dynamicmodule",
        "desc": "grim IK solver",
        "prefix": outprefix,
        "bldprefix": maya.Version(),
        "ext": maya.PluginExt(),
        "defs": defines,
        "incdirs": ["plugins/grim_IK"],
        "srcs": excons.glob("plugins/grim_IK/*.cpp"),
        "custom": [maya.Require]
    }
]

excons.AddHelpTargets(mgear="mgear maya framework (mgear_core, mgear_solvers, cvwrap, grim_IK, maya-math-nodes)")

td = excons.DeclareTargets(env, targets)

env.Alias("mgear", [td["mgear_core"], td["mgear_solvers"], td["cvwrap"], td["grim_IK"], td["maya-math-nodes"]])

td["python"] = filter(lambda x: os.path.splitext(str(x))[1] != ".mel", Glob(outdir + "scripts/*"))
td["scripts"] = Glob(outdir + "scripts/*.mel")

pluginsdir = "/plug-ins/%s/%s" % (maya.Version(nice=True), excons.EcosystemPlatform())

ecodirs = {"mgear_solvers": pluginsdir,
           "cvwrap": pluginsdir,
           "grim_IK": pluginsdir,
           "maya-math-nodes": pluginsdir,
           "python": "/python",
           "scripts": "/scripts"}

excons.EcosystemDist(env, "mgear.env", ecodirs, version=versionstr, targets=td)

Default(["mgear"])
