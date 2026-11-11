# Runbook

## InstanceDown
1. Open Prometheus at /targets and find the failing target.
2. Check the container: docker compose ps
3. Read the logs: docker compose logs <service>
4. Restart if needed: docker compose restart <service>

## HighCpuUsage
1. Open the Node Overview dashboard in Grafana.
2. Find the busy process on the host.
3. Scale or fix the workload.

## LowDiskSpace
1. Find the full filesystem on the Node Overview dashboard.
2. Remove old logs and unused images: docker system prune
