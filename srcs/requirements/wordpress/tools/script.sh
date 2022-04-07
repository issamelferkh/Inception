#!/bin/sh

if ! ls /www/wordpress/index.php &>/dev/null; then
	cp -Rf /wordpress/* /www/wordpress/
fi
/usr/sbin/php-fpm7 --nodaemonize
