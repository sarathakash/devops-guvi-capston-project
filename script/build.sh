#!/bin/bash
docker build -t ngimg .
docker tag ngimg sarathakashk95/prod:version-1

