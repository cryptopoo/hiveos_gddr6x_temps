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
echo "|       If this works for you consider donating at:      |"
echo "|                                                        |"
echo "|    BTC    bc1q0xrs5cq7zwrnvz7dkzvgrzya48se6zgkt90sln   |"
echo "|    ETH    0x9b7A231147c8294cC558F080B26F948Bfd523A79   |"
echo "|    ETC    0xe9c8F439196fBA21f383AE69e8E4330B1493C335   |"
echo "|    BNB    0x9b7A231147c8294cC558F080B26F948Bfd523A79   |"
echo "|    RVN    RB2JTzcSxfZtWcQhYMCgad2M1T8Xi7dgPX           |"
echo "=========================================================="
