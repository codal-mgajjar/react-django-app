#!/bin/bash

# Navigate to the directory containing the project
cd /home/ubuntu/codepipeline/project/react-django-app

# Pull the latest changes from the main branch
git pull origin main


docker stop $(docker ps -a -q) || true

# Remove all containers
docker rm $(docker ps -a -q) || true

# Remove all images
docker rmi $(docker images -q) || true

# Perform system prune
docker system prune -f

# Bring up Docker Compose services
docker compose up -d