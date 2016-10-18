import excons
import sys
import glob
import excons.tools.maya as maya


platname = {"win32": "windows", "darwin": "osx"}.get(sys.platform, "linux")

outprefix = "platforms/%s/%s/%s/plug-ins" % (maya.Version(nice=True), platname, excons.arch_dir)

defines = []
if sys.platform == "win32":
   defines.append("NOMINMAX")

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
   }
]

maya.SetupMscver()

env = excons.MakeBaseEnv()

excons.DeclareTargets(env, targets)

