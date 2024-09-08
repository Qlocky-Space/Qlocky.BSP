#!/bin/bash
# Here are some default settings.
# Make sure DOCKER_WORKDIR is created and owned by current user.

echo "Qlocky Environment Variable loaded"

# Docker
DOCKER_CONTAINER_NAME="yocto-container"
DOCKER_IMAGE_TAG="imx-yocto:latest"
DOCKER_WORKDIR="/opt/yocto"

# Yocto
IMX_RELEASE="qlocky-1.0.0"

YOCTO_DIR="${DOCKER_WORKDIR}/${IMX_RELEASE}-build"

MACHINE="imx8mm-qlocky"
DISTRO="fsl-imx-xwayland"
IMAGES="qlocky-image"

REMOTE="https://github.com/Qlocky-Space/Qlocky.BSP_meta-qlocky"
BRANCH="scarthgap"
MANIFEST=${IMX_RELEASE}".xml"