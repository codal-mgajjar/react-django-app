#!/usr/bin/env bash

sudo rm -rf /home/ubuntu/codepipeline/project/react-django-app/* &&
sudo docker stop $(docker ps -a -q)
