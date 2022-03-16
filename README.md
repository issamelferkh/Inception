# Inception

- Need VM
- All configs in srcs folder
- Makefile required and must be located at the root of your directory.
- It must set up your entire application (i.e., it has to build the Docker images using docker-compose.yml).

- VM
- docker-compose

- Each Docker image must have the same name as its corresponding service.
- Each service has to run in a dedicated container.
- For performance matters, the containers must be built either from the penultimate stable version of Alpine Linux, or from Debian Buster. The choice is yours.
- You also have to write your own Dockerfiles, one per service. 
- The Dockerfiles must be called in your docker-compose.yml by your Makefile.
- It means you have to build yourself the Docker images of your project. 
- It is then forbidden to pull ready-made Docker images, as well as using services such as DockerHub (Alpine/Debian being excluded from this rule).

- You then have to set up:
• A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
• A Docker container that contains WordPress + php-fpm (it must be installed and configured) only without nginx.
• A Docker container that contains MariaDB only without nginx.
• A volume that contains your WordPress database.
• A second volume that contains your WordPress website files.
• A docker-network that establishes the connection between your containers.

- Your containers have to restart in case of a crash.

- In your WordPress database, there must be two users, one of them being the administrator. The administrator’s username can’t contain admin/Admin or administrator/Administrator (e.g., admin, administrator, Administrator, admin-123, and
so forth).


To make things simpler, you have to configure your domain name so it points to your
local IP address.
This domain name must be login.42.fr. Again, you have to use your own login.
For example, if your login is wil, wil.42.fr will redirect to the IP address pointing to
wil’s website



## Steps
- [x] Install Ubuntu Server 20.04.3 LTS VM
- [x] Install Docker Engine on Ubuntu
- [x] Install Docker Compose

https://www.howtoforge.com/tutorial/dockerizing-wordpress-with-nginx-and-php-fpm/
- [x] Step 1 - Install Docker
- [x] Step 2 - Install Docker-Compose
- [ ] Step 3 - Setup Wordpress
- [ ] Step 4 - Configure Docker-Compose
- [ ] Step 5 - Run Docker-compose
- [ ] Step 6 - Install Wordpress



## Resources
- [Install Ubuntu Server 20.04.4 LTS VM](https://ubuntu.com/download/server)
- [Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
- [Install Docker Compose](https://docs.docker.com/compose/install/)
- [Compose file version 3 reference](https://docs.docker.com/compose/compose-file/compose-file-v3/)



## Help

clear docker 


sudo docker system prune -a
sudo docker volume rm $(sudo docker volume ls)


sudo docker stop $(sudo docker ps -aq)
sudo docker rm $(sudo docker ps -aq)
sudo docker rmi -f $(sudo docker images -aq)


http://40.71.118.127