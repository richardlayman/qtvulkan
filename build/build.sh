#!/bin/bash

# clean up the old build items
rm -rf CMakeCache.txt CMakeFiles/ cmake_install.cmake src/ Makefile

# build the project
cmake ..
make

# post work for assets
cp ../src/cube/*.spv src/cube
cp ../src/cube/lunarg.ppm src/cube
