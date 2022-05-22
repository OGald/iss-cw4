#!/bin/bash
sudo make -f /usr/share/selinux/devel/Makefile docker-g42-web.pp
sudo semodule -i docker-g42-web.pp