FROM centos:8
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

COPY ./php-fpm.conf /etc/php-fpm.conf
COPY ./www.conf /etc/php-fpm.d/www.conf
COPY ./php.ini /etc/php.ini

RUN dnf clean all



RUN dnf -y install nginx

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./app.conf /etc/nginx/conf.d/app.conf

RUN dnf clean all

CMD nginx & | php-fpm &
EXPOSE 80


