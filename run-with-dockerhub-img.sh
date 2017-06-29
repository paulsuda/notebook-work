#!/bin/bash
#

if [ -z "$1" ]
  then
  echo "ERROR: Docker image name required."
  echo "Example:"
  echo "    run-with-dockerhub-img.sh tensorflow/tensorflow"
  echo "    run-with-dockerhub-img.sh jupyter/datascience-notebook"
  echo "    run-with-dockerhub-img.sh psuda/jupyter-gym-vnc"
  exit 1
fi

docker run \
  --rm -ti \
  -p 8888:8888 \
  --volume=`pwd`/notebooks:/notebooks \
  $*
