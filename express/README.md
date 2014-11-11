# otium360organization/express
otium360 base Dockerfile for Express (NodeJs) HTTP server.


## Base Docker Image
- [dockerfile/nodejs](https://github.com/dockerfile/nodejs)


## Usage
This image assumes that your application:

- has a file named `server.js` as the entrypoint script
- listens on port `8080`

The image will add to the container a file `/express/package.json` with the required NPM dependencies and install them locally to `/express` folder. NPM dependencies:

- connect
- express
- serve-static

The default command is

    CMD ['npm', 'start']

### Extending via Dockerfile

This image uses the `/express` directory as the root for your NodeJS/Express server, so you must copy here the `server.js` file and your web resources (HTML, JS, CSS and the like).

Sample `Dockerfile`:

    FROM otium360organization/express

    MAINTAINER Bálder Carraté <balder.carrate@otium360.com>

    ADD server.js /express/server.js
    ADD www       /express/www

Sample `server.js`:

    'use strict';

    var connect = require('connect');
    var serveStatic = require('serve-static');

    var app = connect();
    app.use(serveStatic('www', {'index': ['index.html']}));
    app.listen(8080);

    console.log('MyApp is ready at http://localhost:8080');

### Building the image and running the container
Sample execution:

    docker build -t my-app-express /path/to/your/Dockerfile
    docker run -d -p 8080:8080 --name my-app-express my-app-express

