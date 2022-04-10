refactor:
	poetry run black ./
	poetry run isort ./

lint:
	poetry run black --check ./
	poetry run isort --check-only ./


up:
	docker-compose -f docker-compose-local.yml up

build:
	docker build -t forwarder-bot/pgbouncer -f docker/pgbouncer/Dockerfile .
	docker build -t forwarder-bot/postgres -f docker/postgres/Dockerfile .

stop:
	docker-compose -f docker-compose-local.yml down
