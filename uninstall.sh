#!/usr/bin/env bash

DEST_DIR=/opt/gddr6x_temps

echo "Disabling service"
systemctl disable gddr6x_temps.service
systemctl stop gddr6x_temps.service
[[ -f /lib/systemd/system/gddr6x_temps.service ]] && rm -f /lib/systemd/system/gddr6x_temps.service
systemctl daemon-reload

echo "Removing package"
rm -rf ${DEST_DIR}

if [ -f /hive/sbin/autofan.orig ] && [ "$(cat /hive/sbin/autofan /hive/sbin/autofan.orig | grep AUTOFAN_VERSION= | uniq | wc -l)" == "1" ]; then
    echo "Reverting autofan script"
    mv /hive/sbin/autofan.orig /hive/sbin/autofan
fi

echo "Uninstall completed"
