FROM centos:8
LABEL maintainer="Valentyn Fiedietsov <valentin@vine.com>"
RUN dnf update -y && \
    dnf install -y epel-release

RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && \
    dnf install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm && \
    dnf module enable -y php:remi-7.4 && \
    dnf -y update

RUN dnf install -y  php php-fpm php-cli php-common


RUN mkdir -p /run/php-fpm && \
    chown nginx:nginx /run/php-fpm

RUN mkdir -p /var/lib/php/session && \
    chown nginx:nginx /var/lib/php/session

COPY ./src/fpm/php-fpm.conf /etc/php-fpm.conf
COPY ./src/fpm/www.conf /etc/php-fpm.d/www.conf
COPY ./src/fpm/php.ini /etc/php.ini

RUN dnf clean all
CMD /usr/sbin/php-fpm
EXPOSE 9000











