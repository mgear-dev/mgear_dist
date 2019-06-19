### mGear: Rigging framework for Autodesk Maya

End-user distribution of mgear.

<br>

mgear consists of many parts, developed independently. Some of these parts fit together at particular versions, this repository maintains a collection of versions that are compatible with each other.

- See [**Releases**](../releases) for a ready-to-use distribution of mgear.

The general rule is; each individual repository MUST be usable standalone (in conjuntion with core) to facilitate independent development of each part in isolation from each other. This repository is then an *additional* method with which to distribute and consume mgear, primarily intended for the end-user who *does not* want to contribute back to the project through GitHub.
<br>

mGear is a rigging framework for Autodesk Maya. mGear provides a set of convenient modules, tools and c++ solvers to streamline the development of rigging and animation tools.

Originally mGear was design and develope by Jeremie Passerin and Miquel Campos. Currently  mGear is maintained by the mgear-dev organization team.

**MGEAR is under the terms of the MIT License**

### Useful links:

- [mGear Web](http://www.mgear-framework.com/)
- [mGear Forum](http://forum.mgear-framework.com/)
- [mGear Youtube channel](https://www.youtube.com/c/mgearriggingframework)
- [API Docs](http://www.mgear-framework.com/mgear/)
- [Release Log](http://www.mgear-framework.com/mgear/releaseLog.html)
- For the official release, with compiled solvers: [Releases](https://github.com/mgear-dev/mgear/releases)

### [Latest release](https://github.com/mgear-dev/mgear_dist/releases)


### How to start your local git repository to build ([more instructions](https://github.com/mgear-dev/mgear_dist/blob/master/BUILD.md))

```
git clone https://github.com/mgear-dev/mgear_dist.git --recursive
```

**Also to sync to the latest commit in every submodule**

```
git submodule foreach git pull origin master
```

### Architecture
<img width=960 src=https://user-images.githubusercontent.com/1050212/41524355-26a9286a-7318-11e8-8170-7f2215af1f2e.png>
