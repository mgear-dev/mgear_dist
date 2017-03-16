import os
import sys
import glob
import excons
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
      "libs": ([] if maya.Version(asString=False) < 201600 else ["clew"]),
      "install": {"scripts": glob.glob("cvwrap/scripts/*")}
   }
]

maya.SetupMscver()

env = excons.MakeBaseEnv()

td = excons.DeclareTargets(env, targets)

outdir = excons.OutputBaseDirectory()
td["python"] = filter(lambda x: os.path.splitext(x)[1] != ".mel", glob.glob(outdir + "/scripts/*"))
td["scripts"] = glob.glob(outdir + "/scripts/*.mel")

pluginsdir = "/plug-ins/%s/%s" % (maya.Version(nice=True), excons.EcosystemPlatform())

ecodirs = {"mgear_solvers": pluginsdir,
           "cvwrap": pluginsdir,
           "python": "/python",
           "scripts": "/scripts"}

excons.EcosystemDist(env, "mgear.env", ecodirs, version="2.0.11", targets=td)

Default(["mgear_solvers", "cvwrap"])

