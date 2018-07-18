# Demos

--Aim of this Docker files is to bring up container with H2 database running on 8082.--

Pre-requisites:
* It uses local jdk software. Requires "jdk1.8.0_45" to be present in the directory you are running from. 
* Or change paths according your requirements. 

Build Docker Image:
----------------
$ docker build -t h2demo . 


Run Docker Image:
----------------
$ docker run --name test_h2 -p 8082:8082 -t h2demo 


Execute Docker Container:
----------------
$ docker exec -it test_h2 "/bin/bash"
