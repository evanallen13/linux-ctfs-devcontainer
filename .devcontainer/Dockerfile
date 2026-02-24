FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive \
    container=docker

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        systemd \
        systemd-sysv \
        dbus \
        sudo \
        curl \
        ca-certificates \
        iproute2 \
        iputils-ping \
        netcat-openbsd \
        openssh-server \
        procps \
        less \
        vim-common \
        gnupg \
        lsb-release \
        git \
    && rm -rf /var/lib/apt/lists/*

# Permissions
RUN \
    mkdir -p /home/ctf_user/ctf_challenges && \
    touch /home/ctf_user/ctf_challenges/encoded_flag.txt && \
    chmod 777 /home/ctf_user/ctf_challenges/encoded_flag.txt
    
RUN useradd -m -s /bin/bash vscode \
    && echo "vscode ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vscode \
    && chmod 0440 /etc/sudoers.d/vscode

STOPSIGNAL SIGRTMIN+3
CMD ["/sbin/init"]
