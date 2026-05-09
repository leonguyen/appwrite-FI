FROM appwrite/appwrite:1.9.1

ENV _APP_ENV=production

COPY docker/start.sh /start.sh
COPY docker/healthcheck.sh /healthcheck.sh

RUN chmod +x /start.sh /healthcheck.sh

EXPOSE 80 443

ENTRYPOINT ["/start.sh"]
