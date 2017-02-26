#!/bin/bash
#

docker run \
  --rm -ti \
  -p 18888:8888 \
  --volume=`pwd`/notebooks:/notebooks \
  gcr.io/tensorflow/tensorflow $*