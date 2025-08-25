#!/bin.bash
# Install Docker on Ubuntu

sudo apt update -y
sudo apt install -y docker.io
sudo systemctl enable docker -y
sudo systemctl start docker -y
sudo usermod -aG docker ubuntu
echo "Docker installed successfully" 