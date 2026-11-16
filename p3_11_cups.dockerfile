FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv \
    libcups2-dev \
    python3-dev \
    git \
    python-is-python3 \
    binutils \
    ca-certificates \
    libegl1 \
    libgl1 \
    libglib2.0-0 \
    libdbus-1-3 \
    libfontconfig1 \
    libxkbcommon0 \
    libxkbcommon-x11-0 \
    libxcb-cursor0 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libxcb-xkb1 \
    && rm -rf /var/lib/apt/lists/*
