#!/bin/bash

# Run this script in the script folder

# Creates docker webserver so the two containers can communicate
docker network create --subnet=192.0.2.0/24 iss2022/solomon_n

# Builds the database image
cd ../dbserver/
docker build -f Dockerfile --tag iss2022/solomon-db_i .

# Builds the web image
cd ..
cd ../webserver/
docker build -f Dockerfile --tag iss2022/solomon-web_i .

#
# _i = Image
# _c = Container
# _n = network
