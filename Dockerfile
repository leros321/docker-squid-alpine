FROM alpine:3.3

MAINTAINER chrisdaish@gmail.com

RUN apk update \
    && apk add --no-cache squid \
    && apk add --no-cache curl \
    && rm -rf /var/cache/apk/*

COPY start-squid.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
