## Requirements

* docker and docker-compose need to be install on the system


## Clone the repository

git clone https://github.com/smchandimal/xeneta-ops-task.git


## How to deploy local enviroment 

* docker-compose build ---> to build local images 
* docker-compose up    ---> to execute postgres db and api service setup.


## Special notes 

* Both containers volume into following locations 
   - ./rates  --> api service 
   - /data/   --> postgres database

## Extra commands 

* Following command can be use the remove all created contains  
docker container rm -f $(docker container ls -aq)

* Following command can be use the remove all created images  
docker image rm -f $(docker image ls -q)
