FROM ubuntu:latest

RUN apt-get update && \
    apt-get apache2 unzip -y && \
    rm -rf /var/www/html/index.html

ADD https://templatemo.com/download/templatemo_562_space_dynamic /var/www/html/templatemo_562_space_dynamic.zip

WORKDIR /var/www/html/

RUN unzip templatemo_562_space_dynamic.zip && \
    mv templatemo_562_space_dynamic/* /var/www/html/

EXPOSE 80

CMD ["apache2ctl","-D","FOREGROUND"]
