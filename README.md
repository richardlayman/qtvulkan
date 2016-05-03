# qtvulkan

![Example Cube](https://raw.githubusercontent.com/richardlayman/qtvulkan/master/example.png)

compiles, runs, shows rotating cube!

# building with CMake
If you would like to build the project using CMake instead of qmake, follow the below instructions

```
 $ cd build
 $ ./build.sh
 $ cd src/cube/
 // run the C++ cube demo
 $ ./cube
```

## known issues:
* resizing is stuck after one resize event
* qml builds but does not displays a black screen - will add instructions once working
