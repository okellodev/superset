#!/bin/bash
set -e

export SUPERSET_PORT=${PORT:-8088}

superset fab create-admin --username admin --firstname Superset --lastname Admin --email admin@superset.com --password admin 2>/dev/null || true
superset db upgrade
superset init

exec /app/docker/entrypoints/run-server.sh
