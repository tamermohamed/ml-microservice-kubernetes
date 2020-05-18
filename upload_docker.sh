#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=tamermohamed/ml-microservice-kubernetes

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login --username ***** --password ******

docker tag ml-flask-app2 $dockerpath:version1.0

# Step 3:
# Push image to a docker repository

docker push $dockerpath:version1.0
