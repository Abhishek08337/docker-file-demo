FROM ubuntu:latest

RUN apt-get update && \
    apt-get install apache2 unzip -y && \
    rm -rf /var/www/html/index.html

ADD https://templatemo.com/download/templatemo_624_lustro_slideshow /var/www/html/templatemo_624_lustro_slideshow.zip

WORKDIR /var/www/html

RUN unzip templatemo_624_lustro_slideshow.zip && \
    mv templatemo_624_lustro_slideshow/* /var/www/html/

EXPOSE 80

CMD ["apache2ctl","-D","foreground"]
