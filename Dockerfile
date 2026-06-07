FROM php:8.2-apache

RUN docker-php-ext-install mysqli

RUN sed -i 's/mpm_event/mpm_prefork/' /etc/apache2/mods-enabled/mpm_event.load 2>/dev/null || true
RUN a2dismod mpm_event mpm_worker 2>/dev/null || true
RUN a2enmod mpm_prefork

COPY . /var/www/html/

EXPOSE 80
