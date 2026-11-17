#!/usr/bin/env bash
set -euo pipefail

for url in \
  http://localhost:9090/-/healthy \
  http://localhost:9093/-/healthy \
  http://localhost:3000/api/health; do
  if curl -fsS "$url" > /dev/null; then
    echo "OK   $url"
  else
    echo "FAIL $url"
    exit 1
  fi
done
