#!/bin/bash

sudo docker run -d \
    --name=firefox \
    -p 5800:5800 \
    -v "$(pwd)/config:/config:rw" \
    --restart unless-stopped \
    jlesage/firefox
