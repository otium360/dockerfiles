#!/bin/bash
set -e

/opt/apache-tomcat-7.0.56/bin/startup.sh

tail -f /opt/apache-tomcat-7.0.56/logs/catalina.out
