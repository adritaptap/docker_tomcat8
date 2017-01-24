#!/bin/bash

docker stop tomcat_container
docker rm tomcat_container
docker build -t adrien/test .
docker run -d --name tomcat_container adrien/test
docker exec -it tomcat_container bash
