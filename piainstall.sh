#!/bin/bash

# Download and extract
mkdir piatmp
wget "https://installers.privateinternetaccess.com/download/pia-linux-3.3.1-06924.run" -o "piatmp/pia.sh"
chmod +x piatmp/pia.sh
piatmp/pia.sh --target piatmp/ins
# Boot
cp piatmp/ins/installfiles/piavpn.service /etc/systemd/system/
systemctl enable --now piavpn
# Exec
cp piatmp/ins/installfiles/piavpn.desktop /usr/share/applications/
cp piatmp/ins/installfiles/app-icon.png /usr/share/pixmaps/piavpn.png
cp piatmp/ins/installfiles/piafiles/* /opt/piavpn/
