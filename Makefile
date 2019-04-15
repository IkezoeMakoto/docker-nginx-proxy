.PHONY: up down rerun test

.env:
	@cp .env.example .env

up: .env
	docker-compose up -d

down:
	docker-compose down

rerun:
	docker-compose restart

test:
	docker-compose run --rm proxy-nginx nginx -t
