# Set the base image
FROM alpine:edge

# Set the working directory
WORKDIR /app

# Install packages
RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update ; apk upgrade ; apk add --no-cache lynx aria2 python3 py3-pip ; rm -rf /var/cache/apk/*

# Create a virtual environment and install required packages
RUN python3 -m venv ~/pyvenv --system-site-packages
RUN ~/pyvenv/bin/pip3 install yt-dlp

# Set the entrypoint
ENTRYPOINT ["tail", "-f", "/dev/null"]