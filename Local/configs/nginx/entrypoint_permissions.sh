#!/bin/bash

# Cambiar el propietario y el grupo de los archivos y directorios dentro del contenedor

find /var/www/html -type d -exec chmod -R 755 {} \;
find /var/www/html -type f -exec chmod -R 644 {} \;
chmod -R 775 /var/www/html/var/logs;
chown -R www-data:www-data /var/www/html
# Ejecutar el comando CMD original del Dockerfile
exec "$@"
