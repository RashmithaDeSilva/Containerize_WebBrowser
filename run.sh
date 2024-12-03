#!/bin/bash

sudo docker run -d \
--name=firefox \
--security-opt seccomp=unconfined \
-e PUID=1000 \
-e PGID=1000 \
-e TZ=Etc/UTC \
-e FIREFOX_CLI=https://www.google.com/ \
-p 6000:3000 \
-p 6001:3001 \
--shm-size="1gb" \
--restart unless-stopped \
lscr.io/linuxserver/firefox:latest
