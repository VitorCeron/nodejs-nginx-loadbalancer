FROM node:latest

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY package.json .
RUN npm install

COPY . .

ENTRYPOINT ["npm", "start"]
EXPOSE 3000