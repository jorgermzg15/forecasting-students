FROM mcr.microsoft.com/devcontainers/python:3.11-bullseye

# Remove yarn repo with expired GPG key to prevent apt-get update failures
RUN rm -f /etc/apt/sources.list.d/yarn.list || true

# Install common system dependencies needed for scientific Python packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        gfortran \
        libatlas-base-dev \
        liblapack-dev \
        libffi-dev \
        libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user (already done in base image), set workdir
# Use /workspace as the working directory so Codespaces mounts the repo there
WORKDIR /workspace

CMD ["sleep", "infinity"]