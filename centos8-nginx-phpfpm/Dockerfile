FROM fiedietsov/centos8-phpfpm:latest
LABEL maintainer="Valentyn Fiedietsov <valentin@vine.com>"
COPY ./src/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./src/nginx/app.conf /etc/nginx/conf.d/app.conf
RUN dnf -y install nginx
RUN dnf clean all
RUN mkdir -p /var/www/public && \
    chown nginx:nginx /var/www/public
COPY ./public /var/www/public
COPY ./src/start.sh /root/start.sh
CMD /root/start.sh

EXPOSE 80 443


