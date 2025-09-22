#!/usr/bin/env bash

PWD=$PWD

export PATH=$PWD/bin:$PATH

make -C automotive/susan clean
make -C automotive/susan

pushd $PWD

cd consumer/jpeg/jpeg-6a
make clean
./configure
make

popd

mkdir -p out

cp consumer/jpeg/jpeg-6a/cjpeg out
cp consumer/jpeg/jpeg-6a/djpeg out
cp automotive/susan/susan out
