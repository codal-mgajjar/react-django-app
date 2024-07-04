#!/bin/bash

docker stop $(docker ps -a -q) &&

# Remove all containers
docker rm $(docker ps -a -q) &&

# Remove all images
docker rmi $(docker images -q) &&

# Perform system prune
docker system prune -f &&

# Bring up Docker Compose services
docker compose up -d