FROM ubuntu:latest
MAINTAINER V.F. "v.f@gmail.com"
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Welcome to docker workshop 2020, from container' > /usr/share/nginx/html/index.html
EXPOSE 80