#!/bin/bash
set -e

superset fab create-admin --username admin --firstname Superset --lastname Admin --email admin@superset.com --password admin 2>/dev/null || true
superset db upgrade
superset init

exec gunicorn --bind 0.0.0.0:8088 --workers 1 --timeout 120 "superset.app:create_app()"
