#!/bin/bash -x

docker build -f Dockerfile-dockcross --build-arg IMAGE=linux-arm64 -t native-linux-arm64-cross-compile .

docker run --rm native-linux-arm64-cross-compile

docker run --rm native-linux-arm64-cross-compile > native-linux-arm64-cross-compile2

chmod +x native-linux-arm64-cross-compile

docker images

OCI_EXE=docker ./native-linux-arm64-cross-compile --image native-linux-arm64-cross-compile bash -c "ls -l /"
