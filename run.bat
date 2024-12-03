@echo off

REM Create the config directory if it doesn't already exist
if not exist "config" (
    echo Creating config directory...
    mkdir config
)

REM Run the Docker container
echo Starting Firefox container...
docker run -d ^
    --name=firefox ^
    -p 5800:5800 ^
    -v "%cd%/config:/config:rw" ^
    --restart unless-stopped ^
    jlesage/firefox

echo Firefox container started successfully.
