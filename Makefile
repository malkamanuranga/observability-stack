.PHONY: up down logs check

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

check:
	docker compose config -q
