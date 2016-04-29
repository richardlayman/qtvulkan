#!/bin/bash

# clean up the old build items
rm -rf CMakeCache.txt CMakeFiles/ cmake_install.cmake src/ Makefile

# build the project
cmake ..
make

# post work for assets
#cp ../cube/*.spv cube
#cp ../cube/lunarg.ppm cube
