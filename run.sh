#!/bin/bash

# Create the config directory if it doesn't exist
if [ ! -d "./config" ]; then
  echo "Creating config directory..."
  sudo mkdir ./config
fi

# Run the Docker container
echo "Starting Firefox container..."
sudo docker run -d \
    --name=firefox \
    -p 5800:5800 \
    -v "$(pwd)/config:/config:rw" \
    --restart unless-stopped \
    jlesage/firefox

echo "Firefox container started successfully."
