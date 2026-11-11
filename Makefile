.PHONY: up down logs check test

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs -f

check:
	docker compose config -q

test:
	docker run --rm --entrypoint promtool -v "$(CURDIR)/prometheus:/etc/prometheus:ro" prom/prometheus:v2.53.0 test rules /etc/prometheus/tests/alerts_test.yml
