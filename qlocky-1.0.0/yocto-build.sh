#!/bin/bash
# This script will run into container

# source the common variables
. qlocky-1.0.0/config.sh

# Create directory
mkdir -p ${YOCTO_DIR}
cd ${YOCTO_DIR}

# Init
repo init \
    -u ${REMOTE} \
    -b ${BRANCH} \
    -m ${MANIFEST}

repo sync -j`nproc`

# source the yocto env
EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" source imx-setup-release.sh -b build_${DISTRO}

# Build
bitbake ${IMAGES}