#!/bin/bash

# Navigate to the project directory
cd /home/ubuntu/codepipeline/project/react-django-app

# Pull the latest changes from the main branch
git pull origin main

# Update the package repository
sudo apt-get update

# Install Docker if not installed
if ! [ -x "$(command -v docker)" ]; then
  echo "Docker is not installed. Installing Docker..."
  sudo apt-get install -y docker.io
fi

# Install Docker Compose if not installed
if ! [ -x "$(command -v docker-compose)" ]; then
  echo "Docker Compose is not installed. Installing Docker Compose..."
  sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
fi

# Build and start the containers
docker-compose up -d --build

echo "Docker Compose setup completed successfully."
