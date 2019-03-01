stack-proteus
=============

Files needed to build a Proteus (python3 branch) software stack via Spack.

NOTE: The OSX [clang-9.1] build process currently has a show-stopper hiccup while building `daetk`. 

Installation of files
---------------------

Create a root software stack directory `<stack_root>` per directions in [stack-spack](https://github.com/burgreen/stack-spack).

```
tar xfv  stack-proteus-var.tar        -C <stack_root>
tar xfv  stack-proteus-scripts.tar    -C <stack_root>
tar xfvz stack-proteus-thirdparty.tar -C <stack_root>
```

Optional installation of a gcc compiler
---------------------------------------

On MacOS machines, we strongly recommend that the native `clang` compiler be used, and skip this step.

Some Linux machines create odd issues related to their system software when installing Proteus. We have had good success with first
installing our own gcc compiler and using it to build the Proteus stack.

This can be done per directions in [stack-gcc](https://github.com/burgreen/stack-gcc).

Optional use of Proteus source tarballs
----------------------------------------------------------

If there is no internet access on the target machine that you wish to install proteus, you need to secure the needed tarballs and manually transfer them to the target machine.

If you have this need, see [tarballs-proteus](https://github.com/burgreen/tarballs-proteus).

Installation of Proteus software stack
--------------------------------------

```
cd <stack_root>
source 1-setup-spack.sh
./scripts/install-stack-proteus.sh
```

This will install around 70 software packages.

Building of the Proteus (python3 branch) executable 
--------------------------------------

The Proteus software will reside in directory `<proteus_root>`.

```
cd <proteus_root>
./<stack_root>/scripts/build-proteus.sh
```

See the `0-README.txt` installed in `<proteus_root>` for more details.

version: 2019.02.19
