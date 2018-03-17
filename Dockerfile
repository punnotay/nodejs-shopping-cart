FROM node:8.9.4

WORKDIR /code

RUN npm install -g nodemon@1.11.0

COPY package.json /code/package.json
RUN npm install
RUN mv /code/node_modules /node_modules

COPY . /code

CMD ["npm", "srart"]