#!/bin/bash
sudo docker build -t ngimg .
sudo docker tag ngimg sarathakashk95/prod:version-1
