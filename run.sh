#!/bin/bash
#

eval $(docker-machine env default)

notebook_url="http://${DOCKER_HOST:7}/"

echo '*****'
echo '*****'
echo "***** Visit $notebook_url"
echo '*****'
echo '*****'

open $notebook_url

docker run \
  --publish=8888:8888 \
  --rm --tty --interactive \
  --volume=`pwd`/notebooks:/notebooks \
  gcr.io/tensorflow/tensorflow


