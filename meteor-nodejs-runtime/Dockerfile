#
# otium360organization/meteor-nodejs-runtime Dockerfile
# https://github.com/otium360/dockerfiles
#
FROM node:0.10

MAINTAINER Bálder Carraté <balder.carrate@otium360.com>

# Install NPM dependencies
ONBUILD ADD bundle /meteor-nodejs-runtime
ONBUILD WORKDIR /meteor-nodejs-runtime
ONBUILD RUN (cd programs/server && npm install)

CMD ["node", "main.js"]
