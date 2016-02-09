FROM gliderlabs/alpine:3.3
MAINTAINER Josef.Seibl@gmail.com

# "ls /usr/share/zoneinfo/" for possible timezones
# Set your own timezone here
RUN apk-install tzdata \
    && cp /usr/share/zoneinfo/Europe/Brussels /etc/localtime \
    && echo "Europe/Brussels" >  /etc/timezone \
    && apk del tzdata
    # no need for tzdata anymore
