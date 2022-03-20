https://www.howtoforge.com/tutorial/dockerizing-wordpress-with-nginx-and-php-fpm/
## [x] Step 1 - Install Docker
## [x] Step 2 - Install Docker-Compose
## [ ] Step 3 - Setup Wordpress
- Nginx: We use the official docker image, latest version 'nginx: latest'.
- Wordpress: Wordpress provides some docker images on docker-hub, and we will use WordPress 4.7 with PHP-FPM 7.0 on it.
- MySQL: We will use MariaDB official container, latest version.


- Add user to docker group
- Create files and folders:
  - docker-compose.yml:
  - nginx/: used for our additional nginx config, like virtual host etc.
  - db-data/: The volume/directory for the mysql data. The sql from data '/var/lib/mysql' is mounted to db-data directory.
  - logs/: Directory for application log, nginx, mariadb and php-fpm.
  - wordpress/: All wordpress files will be available in that directory.


- In the 'nginx' directory, create a new configuration file for our wordpress virtual host.


## [ ] Step 4 - Configure Docker-Compose








## [ ] Step 5 - Run Docker-compose
## [ ] Step 6 - Install Wordpress




