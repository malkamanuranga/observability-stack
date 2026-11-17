# Troubleshooting

## A target shows as down
Open Prometheus at /targets and read the error column.

## Grafana shows no data
Check the Prometheus datasource, then run the query in Prometheus directly.

## Alerts never fire
Run: docker compose exec prometheus promtool check rules /etc/prometheus/alerts.yml

## Configuration changes are ignored
Restart the container after editing a mounted file.
