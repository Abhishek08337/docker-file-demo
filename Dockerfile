FROM ubuntu:latest

RUN apt-get update && \
    apt-get install apache2 unzip && \
    rm -rf /var/www/html/index.html

ADD https://templatemo.com/download/templatemo_623_novapay /var/www/html/templatemo_623_novapay.zip

WORKDIR /var/www/html

RUN unzip templatemo_623_novapay.zip && \
    mv templatemo_623_novapay/* /var/www/html/
EXPOSE 80

CMD ["apache2ctl","-D","FOREGROUND"]
