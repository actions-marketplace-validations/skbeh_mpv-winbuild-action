#!/bin/sh
git config --global user.email '41898282+github-actions[bot]@users.noreply.github.com'
git config --global user.name 'github-actions'

wget https://github.com/skbeh/mpv-winbuild-cmake/archive/master.zip && unzip master.zip && rm master.zip

cd mpv-winbuild-cmake-master
mkdir build64
cd build64
cmake -DTARGET_ARCH=x86_64-w64-mingw32 -G Ninja ..
ninja gcc
ninja mpv

