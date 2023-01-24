## Build
# docker build -t myapp:0.1.0-ubuntu -f ubuntu.Dockerfile .
## RUN
# docker run -d -p 8888:80 myapp:0.1.0-ubuntu

FROM ubuntu:22.04

# Metada del imagen del contenedor
LABEL email="susguzman@gmail.com" \
      developer="Jesus Guzman"

# Instalar Nginx (Ubuntu)
RUN apt-get update -y
RUN apt-get install nginx -y

# Setear variables de entorno (valores por defecto)
ENV mivariable=valor1 \
    mivariable2=valor2

# Copiar la applicacion
COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
