#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=harishbabua/proj4api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

#docker tag <your-local-image>:<tag> <your-docker-hub-username>/<repository-name>:<tag>
sudo docker tag proj4api:latest harishbabua/proj4api

sudo docker login -u harishbabua -p Ahsirah@4829
# Step 3:
# Push image to a docker repository
#docker push <your-docker-hub-username>/<repository-name>:<tag>
sudo docker push harishbabua/proj4api