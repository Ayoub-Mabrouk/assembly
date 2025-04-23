# Use Debian as a base image
FROM debian:bullseye-slim

# Install necessary tools: NASM (assembler), LD (linker), and any dependencies you need
RUN apt-get update && apt-get install -y \
    nasm \
    build-essential \
    gcc \
    make \
    libc6-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Set environment variable for non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Start bash as the default command
CMD ["bash"]
