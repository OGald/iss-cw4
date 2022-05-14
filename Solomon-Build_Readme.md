File Naming Syntax
_i = Image
_c = Container
_n = network

Solomon-build remakes the network and builds the database images:
docker network create --subnet=192.0.2.0/24 iss2022/solomon_n
docker build -f Dockerfile --tag iss2022/solomon-db_i .
docker build --tag iss2022/solomon-web_i .


_i = Image
_c = Container
_n = network