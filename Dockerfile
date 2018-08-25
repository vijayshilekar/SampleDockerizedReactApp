FROM node:6.9.4

MAINTAINER Vijay Shilekar <vijayshilekar@gmail.com>

# Prepare app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app/

# Install dependencies
COPY package.json /usr/src/app/
RUN npm install --silent

# Add all code 
ADD . /usr/src/app/

# expose the port
EXPOSE 3000

CMD [ "npm", "start" ]
