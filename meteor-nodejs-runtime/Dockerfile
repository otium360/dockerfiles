#
# otium360organization/meteor-nodejs-runtime Dockerfile
# https://github.com/otium360/dockerfiles
#
FROM node:0.10

MAINTAINER Bálder Carraté <balder.carrate@otium360.com>

# Add Meteor bundled app server
ONBUILD ADD bundle /meteor-nodejs-runtime

# Set working directory
ONBUILD WORKDIR /meteor-nodejs-runtime

# Install NPM dependencies
ONBUILD RUN (cd programs/server && npm install)

# Default Command
CMD ["node", "main.js"]
