FROM alpine:3.16

RUN apk update && apk upgrade && \
    apk add php8 php8-fpm php8-phar php8-json php8-exif php8-mysqli php8-mysqlnd php8-openssl mariadb-client curl iputils
    
EXPOSE 9000

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/bin/wp

COPY ./conf/www.conf /etc/php8/php-fpm.d/www.conf
COPY ./conf/wp-config.php /tmp/wp-config.php
COPY ./tools/wordpress.sh /tmp/wordpress.sh

CMD ["/bin/sh", "/tmp/wordpress.sh"]

WORKDIR /var/www/html
