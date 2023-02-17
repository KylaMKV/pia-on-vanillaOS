#!/bin/bash


systemctl disable piavpn

rm /etc/systemd/system/piavpn.service


rm /usr/share/applications/piavpn.desktop
rm /usr/share/pixmaps/piavpn.png
rm /opt/piavpn/ -rvf


groupdel piavpn

echo "Finished Uninstalling! exit abroot and reboot to complete changes"
# Cleanup
rm piauninstall.sh

