#!/bin/bash

# Create Kumir directory if it does not exist
mkdir -p Kumir

setfacl -m kumir:1000:r ${HOME}/.Xauthority
setfacl -m kumir:1000:rw ${PWD}/Kumir

        VER="latest"

exec docker run \
    -it \
    --rm \
    --name kumir \
    --net=host \
    -e DISPLAY \
    --env QT_X11_NO_MITSHM=1 \
    -v ${HOME}/.Xauthority:/home/kumir/.Xauthority \
    -v ${PWD}/Kumir:/home/kumir/Kumir \
    vitalyrepin/kumir:${VER} \
    "/opt/kumir/bin/$@"
