#!/bin/bash

# Update system packages
sudo apt update
sudo apt-get update
sudo apt upgrade -y

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Add current user to Docker group
sudo usermod -aG docker $USER
newgrp docker

# Install AWS CLI
sudo apt install awscli -y

## AWS configuration
aws configure

## Now setup elastic IP on AWS
