## Reason out the tools which needed 

* Docker  -  using docker we can create separate containers for database and application which helps to automate infrastructure setup and reduce manual work. Also it enhances the scalability  and flexibility of the product by supporting container orchestration tools like k8s, EKS, OpenShift and docker Swarm.  

* Docker composer – docker-compose helps to manage multiple containers in a single environment by providing network and related infrastructure which is needed.

* Both these tools help to manage infrastructures as a code which helps to recreate it whenever possible.

* Docker volume – to maintain penitence storage of stateful applications like databases.

* Docker healthcheck - is used to determine the health of a running container if it fails it can restart certain times within given intervals and timeouts. 


## Prerequisite

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
