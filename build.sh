#!/bin/bash

# Define environment variables
docker_image_name="sungmin:v1.0"
docker_container_name="sungmin_1.0"
DATADIR=/Data/Dataset

docker rm -f ${docker_container_name} 2>/dev/null



# Docker run command  
docker run -it \
  --name ${docker_container_name} \
  --user $(id -u):$(id -g) \
  -v /etc/passwd:/etc/passwd:ro \
  -v /etc/group:/etc/group:ro \
  -v ${HOME}:${HOME} \
  -w ${HOME} \
  -v "/local/mnt/workspace":"/local/mnt/workspace" \
  -v ${DATADIR}:"/Data/Dataset/" \
  -v /etc/localtime:/etc/localtime:ro \
  --gpus all \
  --shm-size=128g \
  --ipc=host \
  --hostname ${docker_container_name} \
  ${docker_image_name}
