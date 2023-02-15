#!/bin/bash

# Download and extract
mkdir piatmp
wget "https://installers.privateinternetaccess.com/download/pia-linux-3.3.1-06924.run" -O "piatmp/pia.run"
chmod +x piatmp/pia.run
piatmp/pia.run --target piatmp/ins
# Boot
cp piatmp/ins/installfiles/piavpn.service /etc/systemd/system/
systemctl enable piavpn
# Exec and other
cp piatmp/ins/installfiles/piavpn.desktop /usr/share/applications/
cp piatmp/ins/installfiles/app-icon.png /usr/share/pixmaps/piavpn.png
cp piatmp/ins/piafiles/* /opt/piavpn/

groupadd piavpn
