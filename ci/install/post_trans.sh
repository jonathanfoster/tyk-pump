#!/bin/sh

# Generated by: gromit policy
# Generated on: Wed Nov 23 11:38:15 UTC 2022

if command -V systemctl >/dev/null 2>&1; then
    if [ ! -f /lib/systemd/system/tyk-pump.service ]; then
        cp /opt/tyk-pump/install/inits/systemd/system/tyk-pump.service /lib/systemd/system/tyk-pump.service
    fi
else
    if [ ! -f /etc/init.d/tyk-pump ]; then
        cp /opt/tyk-pump/install/inits/sysv/init.d/tyk-pump /etc/init.d/tyk-pump
    fi
fi
