FROM alpine:3.12.0
RUN apk --no-cache --update \
    add apache2 \
    php7-apache2 \
    php7-mbstring \
    php7-mysqlnd \
    php7-gd \
    php7-xml \
    php7-xmlrpc \
    php7-json \
    php7-bz2 \
    php7-ctype \
    php7-iconv \
    php7-fileinfo \
    php7-session \
    php7-dom  \
    php7-mysqli \
    php7-apcu  \
    php7-intl \
    php7-curl \
    php7-pecl-imagick \
    curl  \
    git   \
    bash 

RUN (mkdir -p /etc/apache2/conf.d/ || true) \
    && cd /var/www/localhost/ \
    && curl -LO https://releases.wikimedia.org/mediawiki/1.34/mediawiki-1.34.2.tar.gz \
    && tar -xf mediawiki-1.34.2.tar.gz && rm -f mediawiki-1.34.2.tar.gz \
    && ln -s mediawiki-1.34.2 mediawiki

COPY LocalSettings.php /var/www/localhost/mediawiki-1.34.2/

EXPOSE 80
ENTRYPOINT ["httpd","-D","FOREGROUND"]

