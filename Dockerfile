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

# Install Pyenv
RUN git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/bin:$PATH
RUN set -ex && \
    echo 'eval "$(pyenv init -)"' >> $HOME/.bashrc && \
    /bin/bash -c 'source $HOME/.bashrc'
