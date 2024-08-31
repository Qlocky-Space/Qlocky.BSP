#!/bin/bash

# source the common variables
. ./config.sh

# start vscode in container
containerId=`printf ${DOCKER_CONTAINER_NAME} | od -A n -t x1 | tr -d '[\n\t ]'`
code --folder-uri="vscode-remote://attached-container+${containerId}/${DOCKER_WORKDIR}"