#!/bin/bash
# Loads SELINUX security modules (Might be used for seccomp and other stuff)
# Make sure you have execstart=/usr/bin/dockerd --selinux-enabled 
# This is done in the /usr/lib/systemd/system/docker.service file
sudo make -f /usr/share/selinux/devel/Makefile docker-db.pp
sudo make -f /usr/share/selinux/devel/Makefile docker-web.pp

sudo semodule -i ../webserver/docker-solomon-db.pp
sudo semodule -i ../webserver/docker-solomon-web.pp
