MACHINE="$(uname -m)"
if [ "$MACHINE" = "armv7l" ]; then
    cd mysql
    mv docker-mysql-raspberry Dockerfile
    docker build -t mysqlcreta:0.1 .
else
    cd mysql
    mv docker-mysql-ubuntu Dockerfile
    docker build -t mysqlcreta:0.1 .
fi
cd ../node
docker build -t nodecreta:0.1 .
cd ../python
docker build -t pythoncreta:0.1 .
cd ../ubuntu
docker build -t ubuntucreta:0.1 .