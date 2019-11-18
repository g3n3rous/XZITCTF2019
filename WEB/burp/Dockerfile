FROM php:5.6.36-apache

ADD src /var/www/html

RUN chmod 777 /var/www/html/docker-php-entrypoint \
	&& mv /var/www/html/docker-php-entrypoint /usr/local/bin/docker-php-entrypoint \
    && docker-php-source extract\
    && cp /usr/src/php/php.ini-production /usr/local/etc/php/php.ini \
    && sed -i -e 's/display_errors.*/display_errors = Off/' /usr/local/etc/php/php.ini


EXPOSE 80

ENTRYPOINT ["/bin/sh", "-c", "docker-php-entrypoint"]
