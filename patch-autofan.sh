#!/usr/bin/env bash

if [ ! -f /hive/sbin/autofan.orig ] || [ "$(cat /hive/sbin/autofan /hive/sbin/autofan.orig | grep AUTOFAN_VERSION= | uniq | wc -l)" != "1" ]; then
    cp /hive/sbin/autofan /hive/sbin/autofan.orig
fi

patch -d/ -p0 -s -N -r- < /opt/gddr6x_temps/autofan.patch && echo "Autofan script patched succesfully!"
