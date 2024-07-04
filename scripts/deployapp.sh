#!/usr/bin/env bash
# Stop all running containers
sudo docker stop $(docker ps -a -q) || true

# Remove all containers
sudo docker rm $(docker ps -a -q) || true

# Remove all images
sudo docker rmi $(docker images -q) || true

# Perform system prune
sudo docker system prune -f

# Bring up Docker Compose services
sudo docker compose up -d