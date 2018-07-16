# dockerdemos


Build Docker Image:
----------------
$ docker build -t simpledemo . 


Run Docker Image:
----------------
$ docker run --name test_h2 -p 8082:8082 -t simpledemo 


Execute Docker Container:
----------------
$ docker exec -it test_h2 "/bin/bash"
