FROM php:8.0-fpm-buster

WORKDIR /var/www/backend

USER root

RUN docker-php-ext-install pdo pdo_pgsql pgsqli && docker-php-ext-enable pgsqli

RUN apt-get update && apt-get upgrade -y

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN chmod 777 -R /var/www/backend