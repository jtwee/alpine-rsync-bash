FROM alpine:latest

LABEL maintainer="jtwee <jtweddle@freshbooks.com>"

RUN apk update \
    && apk upgrade \
    && apk add --no-cache \
        bash \
        ca-certificates \
        curl \
        git \
        gzip \
        jq \
        openssh-client \
        rsync \
        tar \
    && update-ca-certificates \
    && rm -rf /var/cache/*/* \
    && echo "" > /root/.ash_history \
    && sed -i -e "s#bin/ash#bin/bash#" /etc/passwd

ENV LC_ALL=en_US.UTF-8
