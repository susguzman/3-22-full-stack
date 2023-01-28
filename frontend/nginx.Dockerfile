## BUILD
# docker build -t frontend:0.1.0-alpine -f nginx.Dockerfile .
## RUN
# docker run -d -p 8888:80 frontend:0.1.0-alpine

FROM node:16.19.0-buster as compilacion

# Metada del imagen del contenedor
LABEL email="susguzman@gmail.com" \
      developer="Jesus Guzman"

COPY . /opt/app

ENV REACT_APP_BACKEND_BASE_URL=http://localhost:3800

WORKDIR /opt/app

RUN npm install

RUN npm run build

FROM nginx:1.22.1-alpine

## COPY nginx config

COPY --from=compilacion /opt/app/build /usr/share/nginx/html
