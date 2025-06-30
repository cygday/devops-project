#!/bin/bash
container_name="webapp"
image_name="web-app"

docker stop $container_name 2> /dev/null
docker rm $container_name 2> /dev/null

#run new container

docker run -d --name $container_name -p 8090:80 $image_name 

echo "app deployed at locahost:8090"
