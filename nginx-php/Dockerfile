FROM josefcs/alpine-tz-eu

MAINTAINER Josef.Seibl@gmail.com

RUN apk-install nginx ca-certificates php-fpm php-json php-zlib php-xml php-pdo php-phar php-openssl \
    php-pdo_mysql php-mysqli php-gd php-iconv php-mcrypt \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["nginx", "-g", "daemon off;"]