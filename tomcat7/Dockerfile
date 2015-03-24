#
# otium360organization/tomcat7 Dockerfile
# https://github.com/otium360/dockerfiles
#
FROM java:7

MAINTAINER Bálder Carraté <balder.carrate@otium360.com>

RUN \
  cd /opt && \
  wget --no-verbose http://apache.rediris.es/tomcat/tomcat-7/v7.0.59/bin/apache-tomcat-7.0.59.tar.gz && \
  tar zxf apache-tomcat-7.0.59.tar.gz && \
  rm -f apache-tomcat-7.0.59.tar.gz

ADD tomcat-start.sh /opt/apache-tomcat-7.0.59/bin/tomcat-start.sh

EXPOSE 8080

CMD ["bash", "/opt/apache-tomcat-7.0.59/bin/tomcat-start.sh"]
