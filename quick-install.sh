#!/usr/bin/env bash

wget -O - "https://github.com/cryptopoo/hiveos_gddr6x_temps/archive/refs/tags/v1.0.47.tar.gz" | tar -C /tmp -xzf - && \
cd /tmp/hiveos_gddr6x_temps-1.0.47 && \
./install.sh
