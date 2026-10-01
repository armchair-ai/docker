SHELL = /bin/sh

.PHONY: start stop in-py log-py log-worker migrate

start:
	@docker-compose -f ./docker-compose.yml -p aa up -d

stop:
	@docker-compose -f ./docker-compose.yml -p aa down

in-py:
	@docker exec -it aa-python bash

log-py:
	@docker-compose -p aa logs -f python

log-worker:
	@docker-compose -p aa logs -f worker

migrate:
	@docker exec aa-python alembic upgrade head

monitor:
	@docker exec -it aa-redis redis-cli LRANGE queue:default 0 -1