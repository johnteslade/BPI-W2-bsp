#!/bin/bash

docker build . -t bpi-w2-bsp-build
docker run --rm -v $(pwd):/build:rw -w /build -it bpi-w2-bsp-build ./build.sh 1
