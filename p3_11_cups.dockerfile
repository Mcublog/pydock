FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-venv \
    libcups2-dev \
    python3-dev \
    git \
    python-is-python3 \
    && rm -rf /var/lib/apt/lists/*
