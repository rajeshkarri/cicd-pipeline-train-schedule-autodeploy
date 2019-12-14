FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN yum install npm -y
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
