#!/bin/bash
#

docker run \
  --publish=8888:8888 \
  --rm --tty --interactive \
  --volume=`pwd`/notebooks:/notebooks \
  gcr.io/tensorflow/tensorflow
