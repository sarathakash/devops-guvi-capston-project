#!/bin/bash
sudo usermod -aG docker ubuntu
docker build -t ngimg .
docker run --name nginx-container -d -p 3000:80  ngimg
sudo apt install docker-compose -y
docker-compose up -d
docker-compose build
docker tag ngimg sarathakashk95/prod:version-1
docker push sarathakashk95/prod:version-1
