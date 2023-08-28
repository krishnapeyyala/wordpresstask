FROM ubuntu:latest
RUN apt update -y
RUN apt install wget zip tzdata -y
RUN apt install php php-mysqlnd apache2  -y
RUN rm -rf /var/www/html/*
COPY . /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
