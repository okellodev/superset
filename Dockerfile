FROM apache/superset:latest
COPY entrypoint.sh /entrypoint.sh
USER root
RUN chmod +x /entrypoint.sh && . /app/.venv/bin/activate && uv pip install psycopg2-binary
USER superset
CMD ["/entrypoint.sh"]
