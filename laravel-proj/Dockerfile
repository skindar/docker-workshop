FROM fiedietsov/centos8-nginxphpfpm:laravel

CMD mkdir -p /var/www/laravel
COPY public/laravel /var/www/laravel

CMD touch /var/www/laravel/storage/logs/laravel.log && \
    chown -R nginx:nginx /var/www/laravel/storage && \
    /opt/start.sh

    
EXPOSE 80