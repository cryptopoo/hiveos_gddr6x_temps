#!/usr/bin/env bash

HIVEOS_VERSION=$(apt show hive 2>1 | grep Version | cut -d '-' -f2)

if [ "${HIVEOS_VERSION}" -lt "214" ]; then
    wget -O - "https://github.com/cryptopoo/hiveos_gddr6x_temps/archive/refs/tags/v1.2.0.tar.gz" | tar -C /tmp -xzf - && \
    cd /tmp/hiveos_gddr6x_temps-1.2.0 && \
    ./install.sh
else
    echo "Your current version of HiveOS '${HIVEOS_VERSION}' doesn't require this patch."
fi