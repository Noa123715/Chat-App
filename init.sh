#!/bin/bash
# ./delete
# Build the image
docker build -t chat-app:${version}

# # Run the container 
docker run -p 5000:5000 --name chat-App-run chat-app:${version}

# # Run the containet with limit to 2G
# docker run -it --ulimits nproc=1 --memory=2G chat_app

# Run the containet with limit to 1G
# docker run -it --ulimits nproc=1 --memory=1G chat_app