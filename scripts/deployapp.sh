#!/usr/bin/env bash
# Stop all running containers
set -e

docker stop $(docker ps -a -q) || true

# Remove all containers
docker rm $(docker ps -a -q) || true

# Remove all images
docker rmi $(docker images -q) || true

# Perform system prune
docker system prune -f

# Bring up Docker Compose services
docker compose up -d