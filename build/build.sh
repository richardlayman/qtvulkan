#!/bin/bash

# clean up the old build items
rm -rf CMakeCache.txt CMakeFiles/ cmake_install.cmake cube/ lib/ Makefile

# build the project
cmake ..
make

# post work for assets
mkdir cube/shaders
cp ../cube/*.spv cube/shaders
cp ../cube/lunarg.ppm cube