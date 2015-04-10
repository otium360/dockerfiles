# otium360organization/meteor-nodejs-runtime
otium360 base Dockerfile for Meteor (NodeJs) server runtinme.

Check [the official Meteor Documentation](http://docs.meteor.com/#/full/deploying) for more details, specially the section _Running on your own infrastructure_. Take a look also at the `README` file generated under your bundled Meteor application.

## Base Docker Image
- [node:0.10](https://registry.hub.docker.com/_/node/)


## Usage
This image assumes that your application:

- is bundled using `meteor build --directory`
- your `Dockerfile` is in the same folder that the Meteor `bundle` folder. Something like this:

        my/build/folder
        ├── Dockerfile
        ├── bundle
        |   ├── main.js
        |   ├── README
        |   ├── ...

The image will add to the container the `bundle` folder and install the required NPM dependencies locally.

The default command is:

    CMD ["node", "main.js"]

### Extending via Dockerfile
Extending via `Dockerfile` is just as easy as declaring your Meteor environment variables and `EXPOSE` the right port.

Sample `Dockerfile`:

    FROM otium360organization/meteor-nodejs-runtime
    MAINTAINER Bálder Carraté <balder.carrate@otium360.com>
    ENV \
      ROOT_URL=http://my-app.meteor.server \
      PORT=8080 \
      MONGO_URL=mongodb://my-app.mongo.server:27017/my-app
    EXPOSE $PORT


### Building the image and running the container
Sample execution (be sure to replace names and ports to match your environment):

    docker build -t my-app-meteor /path/to/your/Dockerfile
    docker run -d -p 8080:8080 --name my-app-meteor my-app-meteor
