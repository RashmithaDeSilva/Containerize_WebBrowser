@echo off
docker run -d ^
    --name=firefox ^
    -p 5800:5800 ^
    -v "%cd%/config:/config:rw" ^
    --restart unless-stopped ^
    jlesage/firefox
