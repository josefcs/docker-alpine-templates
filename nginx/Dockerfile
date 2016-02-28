FROM josefcs/alpine-tz-eu

MAINTAINER Josef.Seibl@gmail.com

RUN apk-install nginx \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["nginx", "-g", "daemon off;"]