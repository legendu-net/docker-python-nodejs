# NAME: dclong/python-nodejs
FROM dclong/python
# GIT: https://github.com/dclong/docker-python.git

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && npm install -g n \
    && n lts \
    #&& npm cache clean --force \
    && apt-get autoremove -y \
    && apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/*
