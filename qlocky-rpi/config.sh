#!/bin/bash
# Here are some default settings.
# Make sure DOCKER_WORKDIR is created and owned by current user.

echo "Qlocky Environment Variable loaded"

# Docker
DOCKER_CONTAINER_NAME="yocto-container"
DOCKER_IMAGE_TAG="rpi-yocto:latest"
DOCKER_WORKDIR="/opt/yocto"

# Yocto
IMX_RELEASE="qlocky-rpi"

YOCTO_DIR="${DOCKER_WORKDIR}/${IMX_RELEASE}-build"

MACHINE="raspberrypi4-64"
DISTRO="poky"
IMAGES="core-image-minimal"

REMOTE="https://github.com/Qlocky-Space/Qlocky.BSP_meta-rpi"
BRANCH="feature/initial"
MANIFEST=${IMX_RELEASE}".xml"