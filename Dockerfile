FROM redis:6.2.0

COPY ./redis0.conf  /usr/local/etc/redis/redis.conf
COPY ./tests/tls/redis.crt /usr/local/etc/redis/redis.crt
COPY ./tests/tls/redis.key /usr/local/etc/redis/redis.key
COPY ./tests/tls/ca.crt /usr/local/etc/redis/ca.crt
RUN chown -R redis:redis /usr/local/etc/redis
USER root
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf"]