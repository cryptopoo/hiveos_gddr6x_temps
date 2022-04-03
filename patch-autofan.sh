#!/usr/bin/env bash


HIVEOS_VERSION=$(apt show hive 2>1 | grep Version | cut -d '-' -f2)

if [ "${HIVEOS_VERSION}" -lt "214" ]; then
    if [ ! -f /hive/sbin/autofan.orig ] || [ "$(cat /hive/sbin/autofan /hive/sbin/autofan.orig | grep AUTOFAN_VERSION= | uniq | wc -l)" != "1" ]; then
        cp /hive/sbin/autofan /hive/sbin/autofan.orig
    fi

    patch -d/ -p0 -s -N -r- < /opt/gddr6x_temps/autofan.patch && echo "Autofan script patched succesfully!"
else
    echo "Your current version of HiveOS '${HIVEOS_VERSION}' doesn't require this patch."
fi
