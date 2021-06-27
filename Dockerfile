FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -yq --no-install-recommends \
    # Install apache
    apache2 \
    # Install apache logs module
    libapache2-mod-log-sql-mysql \
    # Install mysql client
    mysql-client

RUN a2enmod unique_id
RUN ln -s /var/log/apache2 /etc/apache2/logs

EXPOSE 80 443

WORKDIR /var/www/html

RUN rm index.html

CMD apachectl -D FOREGROUND 