#!/usr/bin/env bash

sudo rm -rf /home/ubuntu/codepipeline/project/react-django-app/* &&

sudo docker stop $(docker ps -a -q) &&

# Remove all containers
sudo docker rm $(docker ps -a -q) &&

# Remove all images
sudo docker rmi $(docker images -q)