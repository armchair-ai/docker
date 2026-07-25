SHELL = /bin/sh

.PHONY: start stop in-py log-py migrate

start:
	@docker-compose -f ./docker-compose.yml -p aa up -d

stop:
	@docker-compose -f ./docker-compose.yml -p aa down

in-py:
	@docker exec -it aa-python bash

log-py:
	@docker-compose -p aa logs -f python

migrate:
	@docker exec aa-python alembic upgrade head