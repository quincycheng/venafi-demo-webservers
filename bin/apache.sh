#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
cd ${SCRIPT_DIR}/../source/images/apache/

#openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout apache.key -out apache.crt -subj "/C=US/ST=YourState/L=YourCity/O=YourOrganization/CN=apache.cybrdemo.local"
docker build -t quincycheng/venafi-demo-apache:0.1 . 
#docker push quincycheng/venafi-demo-apache:0.1 
#docker run --rm -p 443:443 -p 2222:2222 --name apache quincycheng/venafi-demo-apache:0.1