# Imagen NGINX
FROM nginx:alpine

# Copiamos los archivos de la aplicación
COPY app/index.html /usr/share/nginx/html/index.html

# Copiamos la configuración personalizada de NGINX
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Exponemos el puerto 80 dentro del contenedor
EXPOSE 80

# Ejecutamos NGINX en primer plano
CMD ["nginx", "-g", "daemon off;"]
