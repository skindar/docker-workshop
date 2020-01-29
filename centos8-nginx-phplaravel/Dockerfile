FROM fiedietsov/centos8-nginxphpfpm:latest
LABEL maintainer="Valentyn Fiedietsov <valentin@vine.com>"

COPY src/nginx/app.conf /etc/nginx/conf.d/app.conf
#composer and laravel
RUN dnf -y install git php-mcrypt
RUN mkdir -p /var/composer
COPY src/composer-setup.php /var/composer/composer-setup.php
RUN php /var/composer/composer-setup.php --filename=composer --install-dir=/usr/local/sbin && \
    chmod +x /usr/local/sbin/composer

RUN composer global require "laravel/installer=~1.1"


EXPOSE 80