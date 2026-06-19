FROM ubuntu:latest

RUN apt-get update && \
    apt-get install nginx unzip -y && \
    rm -rf /var/www/html/index.html

ADD https://templatemo.com/download/templatemo_621_luminary /var/www/html

WORKDIR /var/www/html

RUN unzip templatemo_621_luminary.zip && \
    mv templatemo_621_luminary/* /var/wwww/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
