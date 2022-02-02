# LOCAL
*Se van a crear 3 contenedores:

    -php7.0

    -nginx1.21.5

    -mysql5.7

<br/>
<br/>

**Este proyecto se ha creado a partir de la Base de imagenes Oficiales de los servicios mencionados anteriormente(PHP, NGINX y MySQL)**

<br/>
<br/>

## Pasos a seguir para hacer funcionar este docker:

    - PASO-1: Añadir la carpeta(vhosts) y dentro de la misma, añadir todo el código.
              EJEMPLO: ./vhosts/CARPETA_PROYECTO/CODIGO
    - PASO-2: Editar el .env y Muy Importante, abrir el docker-compose.yml y editar el nombre de cada servicio y los
              depends_on.
    - PASO-3: Editamos el fichero site.conf, dependiendo de las configuraciones que hayamos configurado, tanto en .env,
              como docker-compose.yml
    - PASO-4: Lanzamos el siguiente comando y debería de funcionar todo:
              docker-compose.yml up -d
    
## Importante: info adicional. 
    - Importar la BBDD que traes del proyecto.
    - Cambiar URL en BBDD si es necesario.
    - Añadir los accesos correctos en el wp-config.php.
    - Revisar en el archivo configs/php/php-fpm.conf la línea Listen, para poner el puerto del contenedor que tiene PHP.

**Está probado en drupal 8, si lo pruebas en otra versión, no te puedo asegurar de que funcione**