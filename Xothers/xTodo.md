# Todo
Before correct run the bellow cmd:
```sudo docker stop $(docker ps -qa); docker rm $(docker ps -qa); docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q); docker network rm $(docker network ls -q) 2>/dev/null```

## General instructions
- [x] use .env
- [ ] docker-compose.yml
  - [ ] There musn't be 'network: host' in it or 'links:'
  - [ ] There must be 'network(s)'
  - [ ] Makefile and all the scripts in which Docker: There musn't be '--link'
  - [ ] Dockerfiles. If you see 'tail -f' or any command run in background in any of them in the ENTRYPOINT section,
  - [ ] Same thing if 'bash' or 'sh' are used but not for running a script (e.g, 'nginx & bash' or 'bash').
  - [ ] If the entrypoint is a script (e.g., ENTRYPOINT ["sh", "my_entrypoint.sh"], ENTRYPOINT ["bash", "my_entrypoint.sh"]), ensure it runs no program in background (e.g, 'nginx & bash').
  - [ ] Examine all the scripts in the repository. Ensure none of them runs an infinite loop. The following are a few examples of prohibited commands: 'sleep infinity', 'tail -f /dev/null', 'tail -f /dev/random'

## Mandatory part
### [ ] Project overview
- [x] The evaluated person has to explain to you in simple terms:
  - [x] How Docker and docker-compose work
  - [x] The difference between a Docker image used with docker-compose and without docker-compose
  - [x] The benefit of Docker compared to VMs
- [ ] The pertinence of the directory structure required for this project (an example is provided in the subject's PDF file).

### [ ] Simple setup
- [x] Ensure that NGINX can be accessed by port 443 only. Once done, open the page.
- [x] Ensure that a SSL/TLS certificate is used.
- [x] Ensure that the WordPress website is properly installed and configured (you shouldn't see the WordPress Installation page). 
- [ ] To access it, open https://login.42.fr in your browser, where login is the login of the evaluated student.
- [ ] You shouldn't be able to access the site via http://login.42.fr.
  - [ ] Clean nginx default.conf & Add comments

### [ ] Docker Basics:
- [ ] Start by checking the Dockerfiles. There must be one Dockerfile per service. Ensure that the Dockerfiles are not empty files.
- [ ] Make sure the evaluated student has written their own Dockerfiles and built their own Docker images. Indeed, it is forbidden to use ready-made ones or to use services such as DockerHub.
- [ ] Ensure that every container is built from the penultimate stable version of Alpine Linux. Dockerfile should start with 'FROM alpine' or 'FROM debian:buster'.
  - [ ] nginx
  - [x] mariadb
  - [x] wordpress
  - [x] adminer

- [ ] The Docker images must have the same name as their corresponding service.
- [ ] Ensure that the Makefile has set up all the services via docker-compose.

### [ ] Docker Network:
- [ ] Ensure that docker-network is used by checking the docker-compose.yaml file. Then run the 'docker network ls' command to verify that a network is visible.
- [ ] The evaluated student has to give you a simple explanation of docker-network.

### [ ] NGINX with SSL/TLS
- [ ] Ensure that there is a Dockerfile.
- [ ] Using the 'docker-compose ps' command, ensure that the container was created (using the flag '-p' is authorized if necessary).
- [ ] Try to access the service via http (port 80) and verify that you cannot connect.
- [ ] Open https://login.42.fr/ in your browser, where login is the login of the evaluated student. The displayed page must be the configured WordPress website (you shouldn't see the WordPress Installation page).
- [ ] The use of a TLS v1.2/v1.3 certificate is mandatory and must be demonstrated. The SSL/TLS certificate doesn't have to be recognized. A self-signed certificate warning may appear.

### [ ] WordPress with php-fpm and its volume
- [ ] Ensure that there is a Dockerfile.
- [ ] Ensure that there is no NGINX in the Dockerfile.
- [ ] Using the 'docker-compose ps' command, ensure that the container was created (using the flag '-p' is authorized if necessary).
- [ ] Ensure that there is a Volume. To do so:
  - [ ] Run the command 'docker volume ls' then 'docker volume inspect'.
  - [ ] Verify that the result in the standard output contains the path '/home/login/data/', where login is the login of the evaluated student.
- [ ] Ensure that you can add a comment using the available WordPress user.
- [ ] Sign in with the administrator account to access the Administration dashboard.
- [ ] The Admin username must not include 'admin' or 'Admin' (e.g., admin, administrator, Admin-login, admin-123, and so forth).
- [ ] From the Administration dashboard, edit a page. Verify on the website that the page has been updated.

### [ ] MariaDB and its volume
- [ ] Ensure that there is a Dockerfile.
- [ ] Ensure that there is no NGINX in the Dockerfile.
- [ ] Using the 'docker-compose ps' command, ensure that the container was created (using the flag '-p' is authorized if necessary).
- [ ] Ensure that there is a Volume. To do so:
  - [ ] Run the command 'docker volume ls' then 'docker volume inspect'.
  - [ ] Verify that the result in the standard output contains the path '/home/login/data/', where login is the login of the evaluated student.
- [ ] The evaluated student must be able to explain you how to login into the database.
- [ ] Try to login into the SQL database as root but with no password. If the login is successful, the evaluation process ends now.
- [ ] Try to login into the SQL database with the user account and its password. Verify that the database is not empty.

### [ ] Persistence!
- [ ] This part is pretty straightforward. You have to reboot the virtual machine. Once it has restarted, launch docker-compose again. Then, verify that everything is functional, and that both WordPress and MariaDB are configured. The changes you made previously to the WordPress website should still be here.























https://www.howtoforge.com/tutorial/dockerizing-wordpress-with-nginx-and-php-fpm/
## [x] Step 1 - [ ] Install Docker
## [x] Step 2 - [ ] Install Docker-Compose
## [ ] Step 3 - [ ] Setup Wordpress
- [ ] Nginx: We use the official docker image, latest version 'nginx: latest'.
- [ ] Wordpress: Wordpress provides some docker images on docker-hub, and we will use WordPress 4.7 with PHP-FPM 7.0 on it.
- [ ] MySQL: We will use MariaDB official container, latest version.


- [ ] Add user to docker group
- [ ] Create files and folders:
  - [ ] docker-compose.yml:
  - [ ] nginx/: used for our additional nginx config, like virtual host etc.
  - [ ] db-data/: The volume/directory for the mysql data. The sql from data '/var/lib/mysql' is mounted to db-data directory.
  - [ ] logs/: Directory for application log, nginx, mariadb and php-fpm.
  - [ ] wordpress/: All wordpress files will be available in that directory.


- [ ] In the 'nginx' directory, create a new configuration file for our wordpress virtual host.


## [ ] Step 4 - [ ] Configure Docker-Compose








## [ ] Step 5 - [ ] Run Docker-compose
## [ ] Step 6 - [ ] Install Wordpress




