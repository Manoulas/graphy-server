FROM node:18.20.6-buster
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apt-get update &&\
    apt-get install -y git &&\
    apt-get upgrade -y git
EXPOSE  4000
CMD node graphserver.js
