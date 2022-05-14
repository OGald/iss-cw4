#!/bin/bash
# Removes all containers and images
# Removes all containers
docker stop iss2022_solomon-db_c
docker stop iss2022_solomon-web_c
docker rm iss2022_solomon-db_c
docker rm iss2022_solomon-web_c
docker network prune

docker image rm iss2022_solomon-db_i
docker image rm iss2022_solomon-web_i
