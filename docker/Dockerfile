FROM ubuntu:xenial

LABEL com.example.is-production="" \
      com.example.version="0.0.1" \
      com.example.release-date="2021-01-25"

# Install software used by TFE
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    daemontools \
    git-core \
    iproute2 \
    netcat-openbsd \
    openssh-client \
    psmisc \
    redis-tools \
    ssh \
    sudo \
    unzip \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Install jq
RUN wget --no-check-certificate \
      -O jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && \
      chmod +x ./jq && \
      cp jq /usr/bin

COPY *.crt /usr/local/share/ca-certificates

RUN update-ca-certificates
