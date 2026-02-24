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
    mkdir -p /home/ctf_user/documents/projects/backup

RUN \
    touch /home/ctf_user/ctf_challenges/encoded_flag.txt && chmod 777 /home/ctf_user/ctf_challenges/encoded_flag.txt && \
    touch /usr/local/bin/check_setup && chmod 777 /usr/local/bin/check_setup && \
    touch /home/ctf_user/.profile && chmod 777 /home/ctf_user/.profile && \
    touch /etc/motd && chmod 777 /etc/motd && \
    touch /home/ctf_user/ctf_challenges/.hidden_flag && chmod 777 /home/ctf_user/ctf_challenges/.hidden_flag && \
    touch /home/ctf_user/documents/projects/backup/secret_notes.txt && chmod 777 /home/ctf_user/documents/projects/backup/secret_notes.txt

RUN useradd -m -s /bin/bash vscode \
    && echo "vscode ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vscode \
    && chmod 0440 /etc/sudoers.d/vscode

RUN chown vscode:vscode /usr/local/bin/check_setup

STOPSIGNAL SIGRTMIN+3
CMD ["/sbin/init"]
