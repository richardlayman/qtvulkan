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
 // run the Qml cube demo
 $ cd src/qml/
 $ ./qml
```

## known issues:
* resizing is stuck after one resize event
* In qml I have to resize the window to display the contents 
