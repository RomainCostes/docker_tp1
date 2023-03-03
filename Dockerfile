# syntax=docker/dockerfile:1

FROM nginx
RUN apt-get update && apt-get install -y nano
COPY . /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]