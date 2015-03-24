#
# otium360organization/express Dockerfile
# https://github.com/otium360/dockerfiles
#
FROM node:0.10

MAINTAINER Bálder Carraté <balder.carrate@otium360.com>

# Install NPM dependencies
ADD package.json /express/package.json
WORKDIR /express
RUN npm install

EXPOSE 8080

CMD ["npm", "start"]
