FROM node:18.16.0-alpine

#Installing the angular cli
RUN npm -y install -g @angular/cli

#COPYING THE CODE
COPY demo-app /app/

WORKDIR /app

RUN npm install

CMD [ "ng", "serve", "--host", "0.0.0.0", "--port", "4200" ]