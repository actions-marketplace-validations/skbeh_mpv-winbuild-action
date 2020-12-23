#!/bin/sh
wget -qO- https://github.com/shinchiro/mpv-winbuild-cmake/archive/master.zip | unzip -
cd mpv-winbuild-cmake-master
mkdir build64
cd build64
cmake -DTARGET_ARCH=x86_64-w64-mingw32 -G Ninja ..
ninja gcc
ninja mpv

