## BUILD
# docker build -t frontend:0.1.0 .
## RUN
# docker run -d -p 3000:3000 frontend:0.1.0

FROM node:16.19.0-buster

# Metada del imagen del contenedor
LABEL email="susguzman@gmail.com" \
      developer="Jesus Guzman"

COPY . /opt/app

ENV REACT_APP_BACKEND_BASE_URL=http://localhost:3800

WORKDIR /opt/app

RUN npm install

RUN npm run build

RUN npm install -g serve

CMD [ "serve", "-s", "build"]
