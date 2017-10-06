FROM nginx:latest
MAINTAINER themorocan09 <themoroccan09@github>

RUN apt-get update &&\
    apt-get install -y \
        nano \
        git \
        vim \
        iputils-ping \
