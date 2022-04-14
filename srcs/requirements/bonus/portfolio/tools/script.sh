#!/bin/sh

# Remove default htdocs
rm -rf /var/www/localhost/htdocs

# Clone portfolio from github
git clone https://github.com/issamelferkh/issamelferkh.github.io.git /var/www/localhost/htdocs

# Run Apache on foreground
exec httpd -DFOREGROUND "$@"