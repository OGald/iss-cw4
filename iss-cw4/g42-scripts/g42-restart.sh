#!/bin/bash
# Removes the containers and then rebuilds them using the same image (use reset if you want rebuild using an updated image)
docker stop iss2022_g42-db_c
docker stop iss2022_g42-web_c
docker rm iss2022_g42-db_c
docker rm iss2022_g42-web_c
./g42-run.sh