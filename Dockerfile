FROM nginx:latest
MAINTAINER "Mohimi Othmane" <mohimi.othmane@gmail.com>

RUN apt-get update &&\
    apt-get install -y \
        nano \
        git \
	vim \
	iputils-ping 

COPY nginx.conf /etc/nginx/nginx.conf
