FROM nginx:1.21-alpine

COPY static-html /usr/share/nginx/html

EXPOSE 80