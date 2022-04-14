# **************************************************************************** #
# Vars                                                                         #
# **************************************************************************** #
HOME=/home/iel-ferk
RED = \033[1;31m
GREEN = \033[1;32m
YELLOW = \033[1;33m
BLUE = \033[1;34m
RESET = \033[0m

credit:
	@echo "██╗███╗   ██╗ ██████╗███████╗██████╗ ████████╗██╗ ██████╗ ███╗   ██╗"
	@echo "██║████╗  ██║██╔════╝██╔════╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║"
	@echo "██║██╔██╗ ██║██║     █████╗  ██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║"
	@echo "██║██║╚██╗██║██║     ██╔══╝  ██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║"
	@echo "██║██║ ╚████║╚██████╗███████╗██║        ██║   ██║╚██████╔╝██║ ╚████║"
	@echo "╚═╝╚═╝  ╚═══╝ ╚═════╝╚══════╝╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━┃By :$(GREEN) iel-ferk $(RESET) ━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# **************************************************************************** #
# All                                                                          #
# **************************************************************************** #
all: credit hosts rmv volumes build up

re: down rmv clean build up 

hosts:
	@echo "$(GREEN)################### Config Hosts ###################$(RESET)"
	sudo cp /home/iel-ferk/Inception/srcs/requirements/tools/hosts /etc/.

clean:
	@echo "$(RED)################### Cleanning System ###################$(RESET)"
	@sudo docker system prune -a -f

rma: stop down rmv clean

# **************************************************************************** #
# lists                                                                        #
# **************************************************************************** #
li:
	@echo "$(YELLOW)################### List Images ###################$(RESET)"
	@sudo docker image ls

lia:
	@echo "$(YELLOW)################### List All Images ###################$(RESET)"
	@sudo docker image ls -a

lc:
	@echo "$(YELLOW)################### List Containers ###################$(RESET)"
	@sudo docker ps

lca:
	@echo "$(YELLOW)################### List All Containers ###################$(RESET)"
	@sudo docker ps -a

# **************************************************************************** #
# Status                                                                       #
# **************************************************************************** #
build:
	@echo "$(GREEN)################### Building Images ###################$(RESET)"
	@sudo docker-compose -f ./srcs/docker-compose.yml build

up:
	@echo "$(GREEN)################### Running Containers ###################$(RESET)"
	@sudo docker-compose -f ./srcs/docker-compose.yml up -d --build

log:
	@echo "$(YELLOW)################### Containers Log ###################$(RESET)"
	@sudo docker-compose -f ./srcs/docker-compose.yml logs

down:
	@echo "$(RED)################### Remove all Containers ###################$(RESET)"
	@sudo docker-compose -f ./srcs/docker-compose.yml down

start:
	@echo "$(GREEN)################### Start Containers ###################$(RESET)"
	@sudo docker-compose -f ./srcs/docker-compose.yml start

stop:
	@echo "$(RED)################### Stop Containers ###################$(RESET)"
	@sudo docker-compose -f ./srcs/docker-compose.yml stop

# **************************************************************************** #
# Volumes                                                                      #
# **************************************************************************** #
rmv:
	@echo "$(RED)################### Deleting volumes ###################$(RESET)"
	sudo rm -rf $(HOME)/data

volumes:
	@echo "$(GREEN)################### Creating volumes ###################$(RESET)"
	mkdir -p $(HOME)/data/db-data
	mkdir -p $(HOME)/data/wp-data
