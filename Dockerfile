# Use a base image with development tools
FROM ubuntu:22.04

# Install basic tools and libraries
RUN apt-get update && apt-get install -y \
    build-essential \
    libstdc++6 \
    libgomp1 \
    libsleef-dev \
    python3 \
    python3-pip

# Copy your project files into the container
WORKDIR /app
COPY ./deployment_bench /app

# Copy requirements.txt and install Python dependencies
COPY requirements.txt /app/requirements.txt
RUN pip3 install -r /app/requirements.txt

# Default entry to keep the container running (for testing)
CMD ["/bin/bash"]