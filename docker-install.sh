#!/bin/bash
sudo apt-get update

sudo apt install curl

curl -fsSL https://get.docker.com -o get-docker.sh && chmod +x get-docker.sh

sh get-docker.sh

# Docker Compose
compose_release() {
  curl --silent "https://api.github.com/repos/docker/compose/releases/latest" |
  grep -Po '"tag_name": "\K.*?(?=")'
}

if ! [ -x "$(command -v docker-compose)" ]; then
  curl -L https://github.com/docker/compose/releases/download/$(compose_release)/docker-compose-$(uname -s)-$(uname -m) \
  -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose
fi

sudo apt install git