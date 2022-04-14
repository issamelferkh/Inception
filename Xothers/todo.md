sudo docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q) 2>/dev/null



- [x] nginx
- mariadb
  - [!] need to delete db-data !
- wordpress
- Bonus
  - [ ] redis
    - Set up redis cache for your WordPress website in order to properly manage the cache.
  - [ ] FTP
    - Set up a FTP server container pointing to the volume of your WordPress website.
  - [x] Portfolio
    - Create a simple static website in the language of your choice except PHP.
  - [x] Adminer.
  - [x] WebSite
    - Set up a service of your choice that you think is useful. During the defense, you will have to justify your choice.

- [x] makefile





- .env
- Volumes
  - add volumes to avoid long link


- Issue: can't deploy WP -> setup ???
  - check wp-config.php & wp.sql
  - start with wordpress service
    - check if download new wp and use my own wp-config.php ?

