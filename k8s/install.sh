#!/bin/bash

# Function to apply a Kubernetes configuration file
apply_k8s() {
    local file="$1"
    echo "Applying $file..."
    kubectl apply -f "$file"

    # Check if the command was successful
    if [ $? -ne 0 ]; then
        echo "Error applying $file. Exiting."
        exit 1
    fi
}

# List of YAML files to apply
yaml_files=(
    "mongodb-deployment.yml"
    "backend-deployment.yml"
    "backend-service.yml"
    "frontend-deployment.yml"
    "frontend-service.yml"
    "ingress.yml"
    "mongodb-pv.yml"
    "mongodb-service.yml"
    "mongodb-pvc.yml"
)

# Loop through each file and apply it
for file in "${yaml_files[@]}"; do
    apply_k8s "$file"
done

echo "All resources applied successfully."