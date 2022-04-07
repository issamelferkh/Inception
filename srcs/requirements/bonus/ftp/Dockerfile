FROM alpine:latest
RUN apk update
RUN apk add vsftpd
RUN apk add openrc
#RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem
#RUN echo -e "123123123\n123123123" | adduser amine
#RUN echo "amine" | tee -a /etc/vsftpd.userlist
COPY ./conf/vsftpd.conf /etc/vsftpd/
COPY ./tools/script.sh /
EXPOSE 21
ENTRYPOINT ["/bin/sh", "/script.sh"]

