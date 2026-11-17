# Alerting

Alert rules live in prometheus/alerts.yml and prometheus/rules/.
Severity levels:
- critical: needs action now, repeats hourly.
- warning: needs attention soon, repeats every four hours.

Alertmanager groups alerts by name and instance, and a critical alert silences
the matching warning.
