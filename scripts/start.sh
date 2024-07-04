#!/bin/bash

sudo docker stop $(docker ps -a -q) &&

# Remove all containers
sudo docker rm $(docker ps -a -q) &&

# Remove all images
sudo docker rmi $(docker images -q) &&

# Perform system prune
sudo docker system prune -f &&

# Bring up Docker Compose services
sudo docker compose up -d