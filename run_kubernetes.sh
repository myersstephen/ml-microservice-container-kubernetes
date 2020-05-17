#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=myersmstephen/machine-learning-api

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run machine-learining-api --generator=run-pod/v1 --image=$dockerpath --port=80 --labels app=machine-learning-api
kubectl create deployment machine-learning-api --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces

# Step 4:
# Forward the container port to a host
kubectl expose deployment machine-learning-api --type="NodePort" --port=80
kubectl port-forward deployment/machine-learning-api 8000:80
kubectl logs -f deployment/machine-learning-api
