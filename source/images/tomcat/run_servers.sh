#!/bin/bash
/usr/sbin/sshd 

export JAVA_HOME=/opt/java/openjdk
/usr/local/tomcat/bin/catalina.sh run
