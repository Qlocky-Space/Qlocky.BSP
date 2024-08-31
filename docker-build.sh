#!/bin/bash
#
# This script creates the yocto-ready docker image.
# Also, a tag is used for easy identification of the generated image.
#

# source the common variables
. ./config.sh

docker build --tag "${DOCKER_IMAGE_TAG}" \
             --build-arg "DOCKER_WORKDIR=${DOCKER_WORKDIR}" \
             --build-arg "USER=$(whoami)" \
             --build-arg "host_uid=$(id -u)" \
             --build-arg "host_gid=$(id -g)" \
             -f Dockerfile \
             .
