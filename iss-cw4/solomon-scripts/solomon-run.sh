#!/bin/bash
# Run this script to load the script

# Runs the docker database image
docker run -d --net iss2022/solomon_n --ip 192.0.2.201 --hostname db.cyber2022.test -e MYSQL_ROOT_PASSWORD="CorrectHorseBatteryStaple" -e MYSQL_DATABASE="iss2022db" --security-opt label:type:docker-solomon-db_t --name iss2022_solomon-db_c iss2022/solomon-db_i
# Runs the docker 
docker run -d --net iss2022/solomon_n --ip 192.0.2.202 --hostname www.cyber2022.test --add-host db.cyber2022.test:192.0.2.201 -p 80:80 --security-opt label:type:docker-solomon-web_t --name iss2022_solomon-web_c iss2022/solomon-web_i
