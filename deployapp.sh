#!/bin/bash
cd cd /home/ubuntu/project/react-django-app
git pull origin main
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker system prune -f
docker-compose pull
docker-compose up -d --build