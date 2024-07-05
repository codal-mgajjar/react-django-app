sudo chmod +x /home/ubuntu/codepipeline/project/react-django-app/scripts/boot.sh &&
cd /home/ubuntu/codepipeline/project/react-django-app &&
sudo docker compose down &&
sudo docker rm backend frontend nginx database 