FROM nginx:latest   
COPY ./default.conf /etc/nginx/conf.d/default.conf
ADD ./certs /etc/nginx/certs/self-signed
CMD [ "nginx",  "-g", "daemon off;" ]