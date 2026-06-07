FROM php:8.2-fpm

RUN docker-php-ext-install mysqli

COPY . /var/www/html/

EXPOSE 9000
