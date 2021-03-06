#!/bin/sh

VOLUME_VERSION="$(php -r 'require('"'"'/var/www/html/wp-includes/version.php'"'"'); echo $wp_version;')"
echo "Volume version : "$VOLUME_VERSION
echo "WordPress version : "$WORDPRESS_VERSION

if [ $VOLUME_VERSION != $WORDPRESS_VERSION ]; then
    echo "Forcing WordPress code update..."
    rm -f /var/www/html/index.php
    rm -f /var/www/html/wp-includes/version.php
fi

docker-entrypoint.sh apache2-foreground
