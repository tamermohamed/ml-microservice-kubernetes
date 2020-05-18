#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=tamermohamed/ml-microservice-kubernetes:version1.0

#kubectl apply -f deployment.yml -f service.yml
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run -it  ml-flask-docker --image=$dockerpath 

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pods/ml-flask-docker 8000:80

