FROM wordpress:5.4.1-php7.2-apache

WORKDIR /var/www/html

COPY . /var/www/html

COPY check-wordpress-version.sh /usr/local/bin/

RUN chmod 755 /usr/local/bin/check-wordpress-version.sh

ENTRYPOINT ["/usr/local/bin/check-wordpress-version.sh"]
