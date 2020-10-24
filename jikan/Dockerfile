FROM php:7.3.23-apache-buster

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN apt update && apt install -y \
    openssl \
    git \
    unzip \
 && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
 && composer --version \
 && a2enmod rewrite \
 && service apache2 restart \
 && git clone https://github.com/jikan-me/jikan-rest.git . \
 && composer install --prefer-dist --no-progress --no-suggest --classmap-authoritative  --no-interaction

ADD .env run-jikan.sh ./

ENTRYPOINT ["./run-jikan.sh"]