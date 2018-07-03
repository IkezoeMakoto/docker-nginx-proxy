.PHONY: up down rerun

.env:
	@cp .env.example .env

up: .env
	docker-compose up -d

down:
	docker-compose down

rerun:
	docker-compose restart