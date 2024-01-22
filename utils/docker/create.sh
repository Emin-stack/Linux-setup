#!/bin/bash
#
# docker pull ubuntu
# docker run -it -p 5901:5901 -p 6789:22 --gpus all -v /mnt:/mnt --name ubuntu ubuntu
#
# docker run -it -p 5903:5901 -p 6789:22 -p 7777:8080 -p 1234:1234 --name myubuntu --gpus all -v /mnt:/mnt -v /tmp/.X11-unix:/tmp/.X11-unix \
#  -e DISPLAY=unix$DISPLAY \
#  -e GDK_SCALE \
#  -e GDK_DPI_SCALE \
#  ${tag_name}



apt-get update
apt-get -y install xorg openbox locales xfce4 xfce4-goodies xfce4-terminal vim git wget net-tools tightvncserver
apt-get -y install xvfb xfonts-100dpi xfonts-75dpi xfonts-cyrillic xorg dbus-x11
echo "*background: #000000" > /root/.Xresources
echo "*foreground: #FFFFFF" >> /root/.Xresources

vncserver
vncserver -kill :1

echo "startxfce4 &" >> ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

vncserver -geometry 1280x960
# Open vnc-viewer and use 127.0.0.1:5901 for connection
#
# config sshd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
/etc/init.d/ssh restart
# use `ssh root@0.0.0.0 -p 6789` for ssh connection
#
echo "\e[91mRemove the comment symbol (#) from the en_US.UTF-8 line and the zh_CN.UTF-8 line!!!\e[0m"
sleep 3
vim /etc/locale.gen
locale-gen
# echo 'LANG=en_US.UTF-8'  > /etc/locale.conf
