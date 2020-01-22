FROM centos:8
MAINTAINER Valentyn Fiedietsov <v.fiedietsov@gmail.com>
#remove later
RUN dnf install vim -y
#remove later

RUN dnf -y update
RUN dnf install nginx -y

RUN dnf install dnf-utils http://rpms.remirepo.net/enterprise/remi-release-8.rpm -y
RUN dnf module reset php
RUN dnf module enable php:remi-7.4 -y
RUN dnf update -y
RUN dnf install php php-fpm  php-gd php-mysqlnd -y
RUN mkdir /var/confs


EXPOSE 80 9000