#MULTI PROCESS
Demo projec

[0] Zero: Compare before running code
- Install Docker
- Install Docker-Compose
NOTE:
    + Step always directory root-project
    + Using with sudo or su command

[1] First: Create environment - using cli
/*********/
cd docker
sh autoDocker.sh
cd ..                       #return directory root
/*********/

[2] Seconds: Run application
/*********/
cd docker
docker-compose up -d
cd ..                       #return directory root
/*********/