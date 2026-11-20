#!/bin/bash

set -e

echo "Pulling latest code from Git..."
git pull origin main

echo "Building Docker image..."
sudo docker build -t 192.168.157.132:5000/ecommerce:latest .

echo "Build successful. Pushing image..."
sudo docker push 192.168.157.132:5000/ecommerce:latest

echo "Image successfully pushed!"
