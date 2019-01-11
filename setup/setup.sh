#!/bin/sh

mkdir -p /serdar/traccar
cp -r * /serdar/traccar
chmod -R go+rX /serdar/traccar

mv /serdar/traccar/traccar.service /etc/systemd/system
chmod 664 /etc/systemd/system/traccar.service

systemctl daemon-reload
systemctl enable traccar.service

rm /serdar/traccar/setup.sh
rm -r ../out
