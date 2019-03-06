FROM php:7.2-apache

RUN pecl install xdebug-2.6.0 \
    && docker-php-ext-enable xdebug

ENV XDEBUG_CONFIG remote_host=host.docker.internal remote_enable=1