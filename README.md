# qtvulkan

![Example Cube](https://raw.githubusercontent.com/richardlayman/qtvulkan/master/example.png)

compiles, runs, shows rotating cube!

requires setting VK_LAYER_PATH and LD_LIBRARY_PATH, e.g.

* LD_LIBRARY_PATH=$HOME/Vulkan-LoaderAndValidationLayers/loader
* VK_LAYER_PATH=$HOME/Vulkan-LoaderAndValidationLayers/dbuild/layers

or where that lies on your system.

Also make sure the include and library paths in cube.pro and lib.pro are correct.

The plan is to port the rotating cube demo, as well as have a Qt Widget that contains a lot of the boilerplate for vulkan setup.

# building with CMake
If you would like to build the project using CMake instead of qmake, follow the below instructions

```
 $ cd build
 $ ./build.sh
 $ cd src/cube/
 $ ./cube
```

## known issues:
* resizing is stuck after one resize event
