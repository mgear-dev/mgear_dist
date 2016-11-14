import excons
import sys
import glob
import excons.tools.maya as maya


platname = {"win32": "windows", "darwin": "osx"}.get(sys.platform, "linux")

outprefix = "platforms/%s/%s/%s/plug-ins" % (maya.Version(nice=True), platname, excons.arch_dir)

defines = []
if sys.platform == "win32":
   defines.append("NOMINMAX")

def CVWrapSetup(env):
   if sys.platform == "win32":
      env.Append(CCFLAGS=["/arch:AVX"])
   else:
      env.Append(CCFLAGS=["-mavx"])

targets = [
   {
      "name": "mgear_solvers",
      "type": "dynamicmodule",
      "prefix": outprefix,
      "bldprefix": maya.Version(),
      "ext": maya.PluginExt(),
      "defs": defines,
      "incdirs": ["src"],
      "srcs": glob.glob("src/*.cpp"),
      "custom": [maya.Require],
      "install": {"scripts": glob.glob("scripts/*"),
                  "": ["mGear.mod"]}
   },
   {
      "name": "cvwrap",
      "type": "dynamicmodule",
      "prefix": outprefix,
      "bldprefix": maya.Version(),
      "ext": maya.PluginExt(),
      "defs": defines,
      "incdirs": ["src"],
      "srcs": glob.glob("cvwrap/src/*.cpp"),
      "custom": [maya.Require, CVWrapSetup],
      "install": {"scripts": glob.glob("cvwrap/scripts/*")}
   }
]

maya.SetupMscver()

env = excons.MakeBaseEnv()

excons.DeclareTargets(env, targets)

Default(["mgear_solvers", "cvwrap"])

