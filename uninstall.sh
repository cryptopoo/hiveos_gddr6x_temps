#!/usr/bin/env bash

DEST_DIR=/opt/gddr6x_temps

systemctl disable gddr6x_temps.service

[[ -f /lib/systemd/system/gddr6x_temps.service ]] && rm -f /lib/systemd/system/gddr6x_temps.service

systemctl daemon-reload

rm -rf ${DEST_DIR}