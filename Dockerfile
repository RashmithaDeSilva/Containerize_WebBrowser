# Base image
FROM lscr.io/linuxserver/firefox:latest

# Set environment variables
ENV PUID=100 \
    PGID=100 \
    TZ=Etc/UTC \
    FIREFOX_CLI=https://www.google.com/

# Expose the necessary ports
EXPOSE 3000
EXPOSE 3001

# Command to run on container start
CMD ["--name=firefox", "--security-opt", "seccomp=unconfined"]
