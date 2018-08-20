FROM node:8-alpine

RUN apk add --no-cache \
  bash \
  curl \
  ca-certificates \
  openssh \
  git

RUN curl -o /usr/local/bin/cc-test-reporter \
  https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 \
  && chmod +x /usr/local/bin/cc-test-reporter
