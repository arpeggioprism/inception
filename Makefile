COMPOSE = docker-compose
YML = ./srcs/docker-compose.yml

all:
	$(COMPOSE) -f $(YML) up --build

down:
	$(COMPOSE) -f $(YML) down

up:
	$(COMPOSE) -f $(YML) up

clean:
	$(COMPOSE) -f $(YML) down --rmi all --volumes

fclean:
	make clean
	rm -rf ${HOME}/data

re:
	make fclean
	make all

.PHONY: all clean fclean re
