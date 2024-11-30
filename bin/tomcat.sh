#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
cd ${SCRIPT_DIR}/../source/images/tomcat/

#openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tomcat.key -out tomcat.crt -subj "/C=US/ST=YourState/L=YourCity/O=YourOrganization/CN=tomcat.cybrdemo.local"
docker build -t quincycheng/venafi-demo-tomcat:0.1 . 
#docker push quincycheng/venafi-demo-tomcat:0.1 
#docker run --rm -p 8080:8080 -p 8443:8443 -p 20022:22 --name tomcat quincycheng/venafi-demo-tomcat:0.1