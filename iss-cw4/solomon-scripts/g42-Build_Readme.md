File Naming Syntax
_i = Image
_c = Container
_n = network

g42-build remakes the network and builds the database images:
docker network create --subnet=192.0.2.0/24 iss2022/g42_n
docker build -f Dockerfile --tag iss2022/g42-db_i .
docker build --tag iss2022/g42-web_i .


_i = Image
_c = Container
_n = networ