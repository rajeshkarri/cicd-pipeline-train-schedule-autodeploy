FROM ubuntu:latest

MAINTAINER ybmsr <ybmadhu404@gmail.com>

WORKDIR /usr/src/app

RUN apt-get -y update

RUN apt-get install -y nodejs

RUN apt-get install -y npm

COPY package*.json ./

RUN npm install 
COPY . .
EXPOSE 8080
CMD ["npm", "start"]
