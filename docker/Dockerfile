FROM php:8.0-fpm

WORKDIR /home/docker/stack/

RUN apt-get update && apt-get install -y \
    build-essential \
    libicu-dev \ 
    libzip-dev \ 
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libonig-dev \
    locales \
    zip \
    unzip \
    jpegoptim optipng pngquant gifsicle \
    vim \ 
    git \ 
    curl \ 
    wget

RUN docker-php-ext-configure zip

RUN docker-php-ext-install \ 
    bcmath \
    mbstring \
    pcntl \
    intl \
    zip \
    opcache

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

USER root

#RUN php artisan key:generate

RUN chmod 777 -R /var/www/backend