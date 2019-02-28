FROM nginx:alpine

ADD https://github.com/glpi-project/glpi/releases/download/9.4.0/glpi-9.4.0.tgz /var/www/glpi-9.4.0.tgz

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/run.sh /usr/local/bin/run.sh

RUN tar -zxf /var/www/glpi-9.4.0.tgz -C /var/www
RUN chown -R nginx:nginx /var/www/glpi

EXPOSE 80 443

CMD [ "/usr/local/bin/run.sh"]
