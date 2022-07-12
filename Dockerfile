FROM ubuntu
RUN apt-get -y update && apt-get -y install nginx
COPY default /etc/nginx/sites-available/default
COPY index.html img /usr/share/nginx/html/
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
