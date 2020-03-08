FROM alpine:latest

ARG USER_NAME=docker
ARG USER_HOME=/home/docker
ARG USER_ID=1000
ARG USER_GROUP=docker
ARG USER_GECOS=ssh

RUN addgroup -S $USER_GROUP && adduser -h $USER_HOME -g $USER_GECOS -G $USER_GROUP -u $USER_ID -D -S $USER_NAME
RUN apk update && apk add openssh-client

USER $USER_NAME