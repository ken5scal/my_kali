FROM kalilinux/kali-linux-docker
MAINTAINER Kengo Suzuki

RUN set -ex && apt-get update && apt-get install -y \
    man \
    vim \
    curl \
    wget \
    git \
    sshpass \
    nmap \
    crunch \
    ncrack \
    hydra \
    metasploit-framework
