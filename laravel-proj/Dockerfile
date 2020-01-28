FROM fiedietsov/centos8-nginxphpfpm:laravel

COPY public /var/www

CMD touch /var/www/laravel/storage/logs/laravel.log && \
    chown -R nginx:nginx /var/www/laravel/storage && \
    /opt/start.sh
    
EXPOSE 80