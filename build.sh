#!/bin/bash

# Define environment variables
docker_image_name="cuda_12.1:v1.0"
docker_container_name="cuda121"
DATADIR=/data/dataset/
# Ensure that a docker container named $docker_container_name does not already exist and remove it if it does
docker stop ${docker_container_name} 2>/dev/null && docker rm ${docker_container_name} 2>/dev/null



# Docker run command  
docker run -it \
  --name ${docker_container_name} \
  -v ${DATADIR}:"/data/dataset/" \
  --gpus all \
  --shm-size=128g \
  --ipc=host \
  --hostname ${docker_container_name} \
  ${docker_image_name}