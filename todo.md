## Custom wp + export db and config
issue: can't create persistent data storage 
try this steps:
- run containers
- make changes
- export db
- export code source





- [ ] Custom nginx container
  - A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.


- Custom WP container
  - A Docker container that contains WordPress + php-fpm (it must be installed and configured) only without nginx.
- Custom MariaDB container
  - A Docker container that contains MariaDB only without nginx.
- A volume that contains your WordPress database.
- A second volume that contains your WordPress website files.
- A docker-network that establishes the connection between your containers.