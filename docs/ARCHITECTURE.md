# Architecture

- node-exporter exposes host metrics.
- Prometheus scrapes metrics, evaluates recording and alert rules.
- Alertmanager groups, routes and silences alerts.
- Grafana reads from Prometheus and shows provisioned dashboards.

Flow: node-exporter -> Prometheus -> Alertmanager -> receivers, and Prometheus -> Grafana.
All configuration lives in Git and is validated by CI before merge.
