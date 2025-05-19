# docker-training
Docker eng. training v1 2025

## Create a User-Defined Docker Network

Run the command: `docker network create homework3-net`

## Backend

To build the docker image run the command: `docker build -t backend .` inside backend folder
To run the docker image run the command: `docker run -d --name backend --network homework3-net -p 5000:5000 backend`

## Frontend

To build the docker image run the command: `docker build -t frontend .` inside frontend folder
To run the docker image run the command: `docker run -d --name frontend --network homework3-net -p 8080:80 frontend`
