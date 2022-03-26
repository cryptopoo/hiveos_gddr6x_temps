#!/usr/bin/env bash

cd /tmp && \
rm -rf hiveos_gddr6x_temps-main && \
wget https://github.com/cryptopoo/hiveos_gddr6x_temps/archive/refs/heads/main.zip -O main.zip && \
unzip main.zip && \
cd hiveos_gddr6x_temps-main && \
bash install.sh
