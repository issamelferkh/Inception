FROM alpine:latest
RUN apk update
RUN apk add gitea
RUN apk add openrc
RUN openrc
RUN touch /run/openrc/softlevel
COPY ./tools/script.sh /
CMD /bin/sh /script.sh
