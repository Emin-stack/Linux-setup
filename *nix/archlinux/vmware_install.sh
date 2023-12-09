#!/bin/sh
YAY=yay
sudo pacman -Syyu
sudo pacman -S fuse2 gtkmm linux-headers pcsclite libcanberra
$YAY -S --noconfirm --needed ncurses5-compat-libs
$YAY -S --noconfirm --needed  vmware-workstation

sudo systemctl enable vmware-networks.service  vmware-usbarbitrator.service 
# vmware-hostd.service not available since version 16
sudo systemctl start vmware-networks.service  vmware-usbarbitrator.service
sudo modprobe -a vmw_vmci vmmon
