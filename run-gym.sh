#!/bin/bash
#

docker run \
  --rm -ti \
  -p 18888:8888 -p 15900:5900 \
  --volume=`pwd`/notebooks:/mnt/notebooks \
  psuda/jupyter-gym-vnc
