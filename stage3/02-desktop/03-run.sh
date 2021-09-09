# USB Mount
mkdir -m 644 ${ROOTFS_DIR}/etc/systemd/system/systemd-udevd.service.d
install -m 644 files/00-usbmountflags.conf ${ROOTFS_DIR}/etc/systemd/system/systemd-udevd.service.d/00-usbmountflags.conf
