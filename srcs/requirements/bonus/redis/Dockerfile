FROM alpine:latest

# Update and Onstall dependencies
RUN apk --update add wget redis

# Download redis cache plugin
RUN wget https://downloads.wordpress.org/plugin/redis-cache.2.0.23.zip
RUN unzip redis-cache.2.0.23.zip
RUN rm redis-cache.2.0.23.zip

# Copy script and config files
COPY ./conf/sysctl.conf /etc/
COPY ./conf/redis.conf /etc/
COPY ./tools/script.sh /
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
