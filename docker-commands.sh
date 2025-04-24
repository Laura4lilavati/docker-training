#! /bin/bash
## Docker commands for Homework 1 - Docker Core Concepts

# exercise 1
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
docker -v
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
docker -v
sudo groupadd docker
sudo usermod -aG docker $USER
sudo reboot now
docker run hello-world
systemctl status docker
docker system info

# exercise 2
docker pull nginx
docker run nginx

# exercise 3
service docker status
sudo systemctl stop docker
sudo systemctl status docker
docker run hello-world
sudo systemctl restart docker
docker run hello-world

# exercise 4
docker run -it ubuntu

# exercise 5
docker ps
docker ps -a

# exercise 6
docker run -d --name my-nginx -p 80:80 nginx:latest
docker ps
docker pause my-nginx
docker ps
docker unpause my-nginx
docker ps
docker stop my-nginx && docker ps
docker restart my-nginx && docker ps
docker kill my-nginx && docker ps

# exercise 7
docker run -d --name my-nginx -p 80:80 nginx:latest
docker stop my-nginx
docker container rm my-nginx

# exercise 8
docker search alpine
docker search ubuntu
docker images

# exercise 9
docker run -it alpine
docker run -it busybox
docker ps -a

# exercise 10
docker container prune
docker image prune -a
sudo du -sh /var/lib/docker
docker system df
