FROM alpine:3.12.0

RUN apk update
RUN apk add vsftpd

COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

COPY ./tools/script.sh /
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
