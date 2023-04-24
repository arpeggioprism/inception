COMPOSE = docker-compose
YML = ./srcs/docker-compose.yml

all:
	mkdir -p ${HOME}/data/wordpress
	mkdir -p ${HOME}/data/mariadb
	$(COMPOSE) -f $(YML) up --build

up:
	$(COMPOSE) -f $(YML) up

down:
	$(COMPOSE) -f $(YML) down

start :
	$(COMPOSE) -f $(YML) start

stop :
	$(COMPOSE) -f $(YML) stop

status :
	docker ps

clean:
	$(COMPOSE) -f $(YML) down --rmi all --volumes

fclean:
	make clean
	rm -rf ${HOME}/data

re:
	make fclean
	make all

.PHONY: all clean fclean re
