#!/usr/bin/env bash
# allow write permission
chmod -R a+w storage/

# php:7.3.23-apache-buster ENTRYPOINT
docker-php-entrypoint apache2-foreground