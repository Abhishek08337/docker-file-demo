FROM ubuntu:latest

RUN apt-get update && \
    apt-get install apache2 unzip -y && \
    rm-rf /var/www/html/index.html

ADD https://templatemo.com/download/templatemo_627_hyperluv_slideshow /var/www/html/templatemo_627_hyperluv_slideshow.zip

WORKDIR /var/www/html

RUN unzip templatemo_627_hyperluv_slideshow.zip && \
    mv templatemo_627_hyperluv_slideshow/* /var/www/html/ 

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
