# List Images
li:
	@sudo docker images

# List Containers
lc:
	@sudo docker ps -a

# Build
buid:
	@sudo docker-compose -f ./srcs/docker-compose.yml build

# UP
up:
	@sudo docker-compose -f ./srcs/docker-compose.yml up -d
	
# Down
down:
	@sudo docker-compose -f ./srcs/docker-compose.yml down
	@sudo docker volume rm srcs_db
	@sudo docker volume rm srcs_wp 
	
start:
	@sudo docker-compose -f ./srcs/docker-compose.yml start

stop:
	@sudo docker-compose -f ./srcs/docker-compose.yml stop

rm:
	@sudo docker-compose -f ./srcs/docker-compose.yml down
	@docker system prune -a
	@sudo docker volume rm srcs_db
	@sudo docker volume rm srcs_wp 

rmv:
	@sudo docker-compose -f ./srcs/docker-compose.yml down
	@sudo docker volume rm srcs_db
	@sudo docker volume rm srcs_wp 

log:
	@sudo docker-compose -f ./srcs/docker-compose.yml logs

status:
	@sudo docker ps -a