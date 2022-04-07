sudo docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q) 2>/dev/null



- [x] nginx
- mariadb
  - [!] need to delete db-data !
- wordpress
- bonus
- .env



- Issue: can't deploy WP -> setup ???
  - check wp-config.php & wp.sql
  - start with wordpress service
    - check if download new wp and use my own wp-config.php ?