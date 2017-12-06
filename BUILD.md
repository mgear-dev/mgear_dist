# How to build mGear

## Prerequisites

Git (of course)

Python 2.7

SCons

Maya 2014 ~ 2018 (*)

A C++ compiler: (*)
- gcc on linux
- clang on OSX
- Visual Studio on windows (**)

(*) Only when building the plugins

(**) The version should match the one used by the target Maya version

## Step by step process

1. Clone the repository and initialize it

```
$ git clone https://github.com/miquelcampos/mgear.git
$ git submodule update --init
```

2. Checkout the desired branch or tag

- **develop** : latest developments 
- **master** : latest official release
- **RB-x.x** : latest version in x.x series (i.e. 2.2.5 in RB-2.2)

```
$ git checkout develop
$ git submodule update
```

3. Compile

The available targets are:
- **mgear_core** : Only mgear python module.
- **mgear_solvers** : Solvers maya plugin.
- **cvwrap** : cvwrap maya plugin.
- **mgear** : everything (*default*)

```
$ scons with-maya=2017
...
(let it cook)
```

To show all available build options:

```$ scons -h```




