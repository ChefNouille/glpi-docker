#!/bin/sh

if [ -f /var/www/glpi/config/config_db.php ]; then
  rm -f /var/www/glpi/install/install.php
fi

nginx -g "daemon off;"
