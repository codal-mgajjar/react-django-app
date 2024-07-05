sudo chmod +x /home/ubuntu/codepipeline/project/react-django-app/scripts/boot.sh &&
cd /home/ubuntu/codepipeline/project/react-django-app &&
sudo docker compose down &&
sudo docker stop $(sudo docker ps -a -q) &&

# Remove all containers
sudo docker rm $(sudo docker ps -a -q) &&

# Remove all images
sudo docker rmi $(sudo docker images -q) &&

# Perform system prune
sudo docker system prune -f

