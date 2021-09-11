# NAME: dclong/python-nodejs
FROM dclong/python
# GIT: https://github.com/dclong/docker-python.git

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs npm \
    && npm install -g n \
    && n lts \
    #&& npm cache clean --force \
    && /scripts/sys/purge_cache.sh
