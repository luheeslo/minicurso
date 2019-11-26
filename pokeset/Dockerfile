FROM node
MAINTAINER luheeslo@gmail.com

WORKDIR /home/dataset

RUN npm install -g json-server
COPY pokedex.json pokedex.json

EXPOSE 3000
CMD ["json-server", "--host", "0.0.0.0", "pokedex.json"]
