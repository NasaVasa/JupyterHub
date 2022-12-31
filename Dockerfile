FROM ubuntu:22.04 AS builder

USER root

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
 && apt-get install -yq --no-install-recommends \
    python3-pip \
    python3 \
    nodejs \
    npm \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN npm install -g configurable-http-proxy
RUN python3 -m pip install jupyterhub
RUN python3 -m pip install --upgrade notebook

RUN useradd -m -d /home/admin -s /bin/bash admin
RUN echo "admin:admin" | chpasswd

ARG NOTEBOOKS_FROM
ARG HUB_PATH

COPY $NOTEBOOKS_FROM $HUB_PATH

EXPOSE 8000

CMD ["jupyterhub"]