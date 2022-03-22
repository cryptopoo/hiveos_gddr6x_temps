#!/usr/bin/env bash

DEST_DIR=/opt/gddr6x_temps
apt install -y inotify-tools

rm -rf ${DEST_DIR}
cp -R .${DEST_DIR} ${DEST_DIR}
chmod +x ${DEST_DIR}/gddr6x_temps

[[ ! -f /lib/systemd/system/gddr6x_temps.service ]] && ln -s /opt/gddr6x_temps/gddr6x_temps.service /lib/systemd/system/gddr6x_temps.service

systemctl daemon-reload
systemctl enable gddr6x_temps.service
systemctl restart gddr6x_temps.service

echo "=========================================================="
echo "|             Installed and activated!                   |"
echo "|========================================================|"
echo "|       If this works for you consider donating at       |"
echo "|       0x480A5cF1933160D2ef7acf259f631e8d656ceD29       |"
echo "=========================================================="