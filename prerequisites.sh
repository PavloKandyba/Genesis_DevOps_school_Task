#!/bin/bash
sudo apt-get update

sudo apt install curl

curl -fsSL https://get.docker.com -o get-docker.sh && chmod +x get-docker.sh

sh get-docker.sh

# Docker Compose
sudo apt install docker-compose
