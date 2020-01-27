FROM fiedietsov/centos8-phpfpm:latest
LABEL maintainer="Valentyn Fiedietsov <valentin@vine.com>"
COPY src/nginx/nginx.conf /etc/nginx/nginx.conf
COPY src/nginx/app.conf /etc/nginx/conf.d/app.conf
RUN dnf -y install nginx
RUN dnf clean all
RUN mkdir -p /var/www/public && \
    chown nginx:nginx /var/www/public
COPY public /var/www/public
RUN dnf -y install python3-pip

RUN pip3 install supervisor

COPY src/supervisord.conf /etc/supervisord.conf
CMD supervisord

EXPOSE 80


