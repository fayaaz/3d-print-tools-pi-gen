#!/bin/bash -e
## Build Mixxx
on_chroot << EOF
    sudo pip3 install --upgrade pip
    sudo pip3 install docker-compose
EOF

mkdir -p ${ROOTFS_DIR}/home/pi/octoprint/
cp -r files/docker-compose.yml "${ROOTFS_DIR}/home/pi/octoprint/docker-compose.yml"

mkdir -p "$DEPLOY_DIR"
