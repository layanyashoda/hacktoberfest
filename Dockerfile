FROM nginx:latest

COPY . /usr/share/nginx/html

EXPOSE 8080

RUN sed -i 's/listen  .*/listen 8080;/' /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
