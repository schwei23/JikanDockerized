#!/usr/bin/env bash
# allow write permission
chmod -R a+w storage/

# php:7.3.13-apache-buster ENTRYPOINT
docker-php-entrypoint apache2-foreground