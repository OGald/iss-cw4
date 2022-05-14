#!/bin/bash
# Loads SELINUX security modules (Might be used for seccomp and other stuff)

sudo semodule -i ../webserver/docker-solomon-db.pp
sudo semodule -i ../webserver/docker-solomon-web.pp
