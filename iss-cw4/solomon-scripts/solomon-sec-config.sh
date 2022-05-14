#!/bin/bash
# Loads SELINUX security modules (Might be used for seccomp and other stuff)
# Make sure you have execstart=/usr/bin/dockerd --selinux-enabled 
# This is done in the /usr/lib/systemd/system/docker.service file
sudo make -f /usr/share/selinux/devel/Makefile ../webserver/configfiles/solomon-SEweb.pp
sudo make -f /usr/share/selinux/devel/Makefile ../dbserver/configfiles/solomon-SEdb.pp

sudo semodule -i ../dbserver/configFiles/solomon-SEdb.pp
sudo semodule -i ../webserver/configFiles/solomon-SEweb.pp