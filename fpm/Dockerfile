FROM php:7-fpm-alpine3.9

RUN apk update && apk upgrade && apk add --no-cache openldap-dev \
  libpng-dev \
  libxml2-dev \
  php7-dev \
  imap-dev \
  g++ \
  gcc \
  make
RUN docker-php-ext-install opcache \
  ldap \
  gd \
  mysqli \
  imap \
  xmlrpc
RUN pecl install apcu && pecl clear-cache && docker-php-ext-enable apcu

ADD https://github.com/glpi-project/glpi/releases/download/9.4.0/glpi-9.4.0.tgz /var/www/glpi-9.4.0.tgz

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY fpm/run.sh /usr/local/bin/run.sh

RUN tar -zxf /var/www/glpi-9.4.0.tgz -C /var/www
RUN chown -R www-data:www-data /var/www/glpi

WORKDIR /var/www/glpi

EXPOSE 9000

CMD [ "/usr/local/bin/run.sh"]
