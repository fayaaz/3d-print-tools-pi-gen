#!/bin/bash -e
## Install cura and octoprint
on_chroot << EOF
    pip3 install --upgrade pip
    pip3 install docker-compose
    usermod -aG docker pi
    wget https://github.com/smartavionics/Cura/releases/download/20210908/Cura-mb-master-aarch64-20210908.AppImage -O /opt/Cura.AppImage
    chmod +x /opt/Cura.AppImage
    chown pi:root /opt/Cura.AppImage
EOF

mkdir -p ${ROOTFS_DIR}/home/pi/octoprint/
cp -r files/docker-compose.yml "${ROOTFS_DIR}/home/pi/octoprint/docker-compose.yml"

mkdir -p "$DEPLOY_DIR"
