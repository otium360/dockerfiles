# otium360organization/tomcat7
otium360 base Dockerfile for Tomcat7.


## Base Docker Image
- [java](https://registry.hub.docker.com/_/java/)

## Usage

Sample `Dockerfile`:

    FROM otium360organization/tomcat7
    MAINTAINER Bálder Carraté <balder.carrate@otium360.com>
    ADD myapp.war /opt/tomcat7/webapps/myapp.war
