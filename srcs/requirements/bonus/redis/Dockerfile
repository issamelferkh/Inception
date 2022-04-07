FROM alpine:latest
RUN apk update
RUN apk add wget
RUN apk --update add redis 
RUN  wget https://downloads.wordpress.org/plugin/redis-cache.2.0.22.zip
RUN unzip  redis-cache.2.0.22.zip
RUN rm redis-cache.2.0.22.zip
COPY ./conf/sysctl.conf /etc/
COPY ./conf/redis.conf /etc/
COPY ./tools/script.sh /
ENTRYPOINT ["/bin/sh", "/script.sh"]
