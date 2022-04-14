FROM alpine:latest
RUN apk update
RUN apk add apache2 openrc git
RUN openrc
RUN touch /run/openrc/softlevel
COPY ./tools/script.sh /
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
