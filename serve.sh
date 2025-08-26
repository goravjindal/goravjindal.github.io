#!/bin/bash
set -e

# Check if docker is running
if ! systemctl is-active --quiet docker; then
    echo "Docker is not running. Starting Docker..."
    sudo systemctl start docker
else
    echo "Docker is already running."
fi

# Run docker compose
echo "Pulling images..."
docker compose pull

echo "Starting containers..."
docker compose up

