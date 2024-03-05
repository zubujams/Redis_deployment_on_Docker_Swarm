# Use the official Redis image from Docker Hub as the base image
FROM redis:latest

# Custom Redis configuration,
# This copies a custom redis.conf file into the container.
COPY ./path/to/your/redis.conf /usr/local/etc/redis/redis.conf

# Use the Command block to tell Redis to use it as the config file.
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

# Expose port 6379 for Redis server
EXPOSE 6379
