FROM alpine:latest
RUN echo http://nl.alpinelinux.org/alpine/edge/community >> etc/apk/repositories
RUN apk update
RUN apk add php7-fpm php7-pecl-redis php7-mcrypt php7-soap php7-openssl php7-gmp php7-pdo_odbc php7-json \
    php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath \
    php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc \
    php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype php7-session php7-mbstring \
    php7 php7-opcache php7-zlib 1>/dev/null
RUN apk add phpmyadmin
RUN apk add php7-fpm
RUN apk add wget
RUN mkdir www
RUN wget http://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN rm latest.tar.gz
RUN rm wordpress/wp-config-sample.php
COPY ./conf/wp-config.php wordpress/
COPY ./tools/script.sh /
COPY ./conf/www.conf /etc/php7/php-fpm.d/
ENTRYPOINT ["/bin/sh", "/script.sh"]
