#!/bin/bash
#installing docker in EC2 server
sudo apt-get update -y

sudo apt-get install docker.io -y

sudo usermod -aG docker ubuntu
sudo usermod -aG docker jenkins

newgrp docker
sudo chmod 660 /var/run/docker.sock
sudo chown root:docker /var/run/docker.sock

sudo systemctl restart docker

docker -version