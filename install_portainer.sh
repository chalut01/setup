#!/bin/bash

docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name portainer --restart always -v \\.\pipe\docker_engine:\\.\pipe\docker_engine -v portainer_data:C:\data portainer/portainer
docker ps
echo "pls. run the following command"
echo "docker rename <portainer container> portainer"
