FROM apache/superset:latest
COPY entrypoint.sh /entrypoint.sh
USER root
RUN chmod +x /entrypoint.sh
USER superset
CMD ["/entrypoint.sh"]
