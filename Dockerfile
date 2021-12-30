FROM nginx:1.21-alpine

RUN cd /usr/share/nginx

COPY static-html /usr/share/nginx/html

EXPOSE 80