#!/bin/bash
#

docker run \
  --rm -ti \
  -p 8888:8888 \
  --volume=`pwd`/notebooks:/notebooks \
  $*
