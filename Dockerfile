FROM ubuntu
RUN apt-get -y update && apt-get -y install nginx
COPY default /etc/nginx/sites-available/default
COPY index.html /usr/share/nginx/html/index.html
COPY fondo.jpg /usr/share/nginx/html/fondo.jpg
EXPOSE 8000/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]