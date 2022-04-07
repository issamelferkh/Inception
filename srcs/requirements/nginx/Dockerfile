FROM alpine:latest

# Update
RUN apk update

# Install nginx
RUN apk add nginx

# Add user www
RUN adduser -D -g 'www' www

# Creat www folder to host wp srcs and change owner
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www

# Copy nginx config
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.back 
COPY ./conf/nginx.conf /etc/nginx/

# Install OpenSSL and Genarate SSL cert
RUN apk add openssl
RUN mkdir /etc/ssl/private
RUN chmod 700 /etc/ssl/private
RUN openssl req -x509 -nodes -days 365 -subj "/C=MA/ST=Beni Mellal-Khenifra/L=Khouribga/O=1337 - 42 Network/CN=iel-ferk.42.fr" -addext "subjectAltName=DNS:iel-ferk.42.fr" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
  # C=Country Name (2 letter code)=MA
  # ST=State or Province Name (full name)=Beni Mellal-Khenifra
  # L=Locality Name (eg, city)=Khouribga
  # O=Organization Name:1337 - 42 Network
  # CN=Common Name=iel-ferk.42.fr

# Copy Script from the local to the container
COPY ./tools/script.sh /
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]

# https://wiki.alpinelinux.org/wiki/Nginx
