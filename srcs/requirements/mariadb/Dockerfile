FROM alpine:latest
RUN apk update
RUN apk add mariadb mariadb-common mariadb-client
RUN apk add openrc
RUN openrc
RUN touch /run/openrc/softlevel
COPY ./conf/wp.sql /
COPY ./tools/script.sh /
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
