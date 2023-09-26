#!/bin/bash
# ./delete
# Build the image
version='latest'
if [ $# -ne 0 ]; then
    # Arguments were passed, so use them
    version=$1
fi
docker volume create chat-app-data
# docker build -t chat-app:${version} .
docker run -v chat-app-data:/chatApp/data -p 5000:5000 --name chat-app-run chat-app:${version}

# Run the container 
#docker run -p 5000:5000 --name chat-app-run chat-app:${version}

# Run the container with limit to 2G
#docker run -it --ulimits nproc=1 --memory=2G chat_app

# Run the container with limit to 1G
#docker run -it --ulimits nproc=1 --memory=1G chat_app
