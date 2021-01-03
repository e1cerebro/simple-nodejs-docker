FROM node:alpine

WORKDIR /usr/app/

# Doing these two steps before copying the test of the files will ensure that we only install dependencies only when they are needed
COPY ./package.json ./
RUN npm install

COPY ./ ./

CMD ["node", "index.js"]