FROM fiedietsov/centos8-nginxphpfpm:laravel


COPY public /var/www/
CMD mkdir -p /var/www/laravel

EXPOSE 80
CMD touch /var/www/laravel/storage/logs/laravel.log && \
    chown -R nginx:nginx /var/www/laravel && \
    /opt/start.sh

    
