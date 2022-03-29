# FROM alpine

# # Update and Install Required Tools
# RUN apk update
# RUN apk add nginx openrc vim openssl

# # Create nginx root www folder
# RUN mkdir -p /www/wordpress


# # change owner of The folder to nginx user
# RUN chown -R nginx:nginx /var/lib/nginx
# RUN chown -R nginx:nginx /www


# # Copy cert, key and config file
# COPY ./default.conf /etc/nginx/conf.d/default.conf
# COPY ./tools/script.sh /
# COPY ./certs /etc/nginx/certs/self-signed

# # Start OpenRC
# RUN openrc
# RUN touch /run/openrc/softlevel

# # VOLUME ["/sys/fs/cgroup"]

# # https://superuser.com/questions/1306656/cant-run-nginx-in-alpine-linux-docker
# # Create folder
# RUN mkdir -p /run/nginx


# # Run Script
# # RUN chmod +x ./script.sh
# # CMD ./script.sh
# ENTRYPOINT [ "nginx",  "-g", "daemon off;" ]
# # ENTRYPOINT ["./script.sh"]


FROM nginx:latest   
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
ADD ./conf/certs /etc/nginx/certs/self-signed
ENTRYPOINT [ "nginx",  "-g", "daemon off;" ]
