FROM alpine:3.9
RUN apk --update add nginx && mkdir /var/www/html
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off; pid /run/nginx.pid;"]
