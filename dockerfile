FROM nginx
RUN apt update -y &&  apt install php8.2-fpm -y
RUN apt install sudo
RUN sudo usermod -aG www-data nginx
COPY .  /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD service php8.2-fpm start && nginx -g "daemon off;"
