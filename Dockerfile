FROM alpine:3.6

MAINTAINER Shoma Nishitateno <shoma416@gmail.com>

RUN set -ex \
    && apk update \
    && apk add --no-cache \
      certbot

VOLUME /etc/letsencrypt

EXPOSE 80 443

ENTRYPOINT ["certbot", "certonly", "--standalone", "-n", "--agree-tos"]