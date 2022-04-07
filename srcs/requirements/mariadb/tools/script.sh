#!/bin/sh

# Check if wordpress db existe 
if [ ! -d "/var/lib/mysql/wordpress" ]; then
  /etc/init.d/mariadb setup
  /etc/init.d/mariadb start

  # Copy and Setup WP DB
  cp /wp.sql  /var/lib/mysql/.
  mysql -u ${DB_ROOT_USER} < /var/lib/mysql/wp.sql
  rm /var/lib/mysql/wp.sql

  # Create new user and make it GRANT ALL PRIVILEGES to all DBs in localhost
  mysql -u ${DB_ROOT_USER} -e "CREATE USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"
  # mysql -u ${DB_ROOT_USER} -e "CREATE DATABASE ${DB_NAME};"
  mysql -u ${DB_ROOT_USER} -e "GRANT ALL PRIVILEGES ON *.* TO '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"

  mysql -u ${DB_ROOT_USER} -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
  mysql -u ${DB_ROOT_USER} -e "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"

  mysql -u ${DB_ROOT_USER} -e "ALTER USER '${DB_USER}'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"
  mysql -u ${DB_ROOT_USER} -e "ALTER USER '${DB_ROOT_USER}'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';"
fi

# Skip Networking
sed -i 's/skip-networking/# skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf
rc-service mariadb restart
rc-service mariadb stop

# Run db in the foreground
/usr/bin/mariadbd --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib/mariadb/plugin --user=mysql --pid-file=/run/mysqld/mariadb.pid
tail -f /dev/null
