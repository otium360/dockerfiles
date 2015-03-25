#!/bin/bash
set -e

/opt/tomcat7/bin/startup.sh

tail -f /opt/tomcat7/logs/catalina.out
