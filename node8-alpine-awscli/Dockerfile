FROM node:8-alpine

RUN apk add --no-cache \
  bash \
  py-pip \
  ca-certificates \
  openssh \
  git

RUN pip install awscli --upgrade
