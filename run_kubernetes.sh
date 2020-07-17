  
#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ozturq/ozturq:ozturqmlapi

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ozturqmlapi --image=ozturq/ozturq:ozturqmlapi --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment ozturqmlapi --type=LoadBalancer --port=8000 --target-port=80