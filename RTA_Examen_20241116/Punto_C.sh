#!/bin/bash
echo FROM nginx:latest > /home/mateo/UTN-FRA_SO_Examenes/202406/docker/Dockerfile
echo COPY index.html /usr/share/nginx/html/index.html >> Dockerfile

docker build -t mateogarcia1/web1-garcia:latest /home/mateo/UTN-FRA_SO_Examenes/202406/docker

docker push mateogarcia1/web1-garcia:latest

echo "docker run -d -p 8080:80 mateogarcia1/web1-garcia:latest" > /home/mateo/UTN-FRA_SO_Examenes/202406/docker/run.sh
chmod +x /home/mateo/UTN-FRA_SO_Examenes/202406/docker/run.sh
