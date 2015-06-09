# You can download that file from 
# https://github.com/docker-training/staticweb
# Version: 0.0.1
FROM ubuntu:14.10
MAINTAINER Docker Education Team <education@docker.com>

RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' \
     >/usr/share/nginx/html/index.html

CMD [ "nginx", "-g", "daemon off;" ]
EXPOSE 80
