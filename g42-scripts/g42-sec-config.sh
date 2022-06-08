#!/bin/bash
# Loads SELINUX security modules (Might be used for seccomp and other stuff)
# Make sure you have execstart=/usr/bin/dockerd --selinux-enabled 
# This is done in the /usr/lib/systemd/system/docker.service file

# Run these files in the respective config files once on your machine for selinux
#sudo make -f /usr/share/selinux/devel/Makefile docker-g42-web.pp
#sudo make -f /usr/share/selinux/devel/Makefile docker-g42-db.pp

docker volume create sqldata

sudo semodule -i ../dbserver/configFiles/docker-g42-web.pp
sudo semodule -i ../webserver/configFiles/docker-g42-db.pp
