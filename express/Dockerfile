#
# otium360/express Dockerfile
# https://github.com/otium360/express
#
FROM dockerfile/nodejs

MAINTAINER Bálder Carraté <balder.carrate@otium360.com>

# Install NPM dependencies
ADD package.json /express/package.json
WORKDIR /express
RUN npm install

EXPOSE 8080

CMD ["npm", "start"]
