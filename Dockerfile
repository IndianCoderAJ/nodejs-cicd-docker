FROM node:16-alpine as base
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm cache clean --force
RUN npm install
COPY . .
EXPOSE 8000
CMD [ "npm", "run", "start"]