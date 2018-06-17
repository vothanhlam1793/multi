echo pwd

cd mysql
docker build -t mysqlcreta:0.1 .
cd ../node
docker build -t nodecreta:0.1 .
cd ../python
docker build -t pythoncreta:0.1 .
cd ../ubuntu
docker build -t ubuntucreta:0.1 .