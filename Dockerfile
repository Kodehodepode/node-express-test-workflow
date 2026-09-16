FROM node:current-alpine3.23
COPY package.json ./
WORKDIR /
RUN npm install
COPY ./tests ./tests
CMD ["npm","test"]