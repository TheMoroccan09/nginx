FROM nginx:1.27.3
# Add metadata using labels
LABEL maintainer="TheMoroccan09"
LABEL version="1.1"
LABEL description="Nginx"

RUN apt-get update \
    && apt-get install -y \
    git \
    nano \
    iputils-ping \
    certbot \
    ssl-cert-check \
    && apt-get clean

COPY nginx.conf /etc/nginx/nginx.conf
COPY renew-certbot.sh /opt/renew-certbot.sh

RUN chmod u+x /opt/renew-certbot.sh