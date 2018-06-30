.PHONY: up down

.env:
	@cp .env.example .env

up: .env
	docker-compose up -d

down:
	docker-compose down