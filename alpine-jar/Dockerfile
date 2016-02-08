FROM gliderlabs/alpine:3.3
MAINTAINER Josef.Seibl@gmail.com

RUN apk-install openjdk8-jre

COPY entrypoint.sh /srv/entrypoint.sh
COPY my-jar.jar /srv/my-jar.jar

RUN chmod +x /srv/entrypoint.sh \
    && chmod +x /srv/my-jar.jar

ENTRYPOINT ["/bin/sh"]
CMD ["/srv/entrypoint.sh"]
