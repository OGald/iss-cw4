Simply just runs the docker run commands


docker run -d --net iss2022/g42_n --ip 192.0.2.201 --hostname db.cyber2022.test -e MYSQL_ROOT_PASSWORD="CorrectHorseBatteryStaple" -e MYSQL_DATABASE="iss2022db" --security-opt label:type:docker-g42-db_t --name iss2022_g42-db_c iss2022/g42_i

docker run -d --net iss2022/g42_n --ip 192.0.2.202 --hostname www.cyber2022.test --add-host db.cyber2022.test:192.0.2.201 -p 80:80 --security-opt label:type:docker-g42-web_t --name iss2022_g42-web_c iss2022/g42-web_i
