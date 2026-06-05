FROM apache/superset:latest
COPY entrypoint.sh /entrypoint.sh
USER root
RUN chmod +x /entrypoint.sh && pip install psycopg2-binary
USER superset
CMD ["/entrypoint.sh"]
