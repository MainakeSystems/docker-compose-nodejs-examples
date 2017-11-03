FROM node:alpine

#Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Install app dependencies
COPY package.json /usr/src/app/
RUN npm install --production

#Copy Bundle app source
COPY index.js /usr/src/app

ENV PORT 8080
EXPOSE ${PORT}

#Argument parameter value when build
ARG parameter1
ARG parameter2

RUN echo "Parameter Value1: $parameter1"
RUN echo "Parameter Value2: $parameter2"

CMD ["npm", "start"]
