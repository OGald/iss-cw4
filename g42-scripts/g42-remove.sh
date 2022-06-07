#!/bin/bash
# Removes all containers and images
# Removes all containers
docker stop iss2022_g42-db_c
docker stop iss2022_g42-web_c
docker rm iss2022_g42-db_c
docker rm iss2022_g42-web_c
docker network prune

docker image rm iss2022_g42-db_i
docker image rm iss2022_g42-web_i
