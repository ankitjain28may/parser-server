#!/bin/bash

# print outputs and exit on first failure
set -xe

cd /var/www/parser-server
echo "Branch change to master"
sudo git checkout master
echo "Pulling changes from Git"
sudo git pull origin master
echo "Running docker composer"
sudo docker-compose up -d
