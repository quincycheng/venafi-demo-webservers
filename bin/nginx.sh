#!/bin/bash
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";
cd ${SCRIPT_DIR}/../source/images/nginx/

#openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt -subj "/C=US/ST=YourState/L=YourCity/O=YourOrganization/CN=nginx.cybrdemo.local"
docker build -t quincycheng/venafi-demo-nginx:0.1 . 
#docker push quincycheng/venafi-demo-nginx:0.1 
#docker run --rm -p 80:80 -p 10443:443 -p 10022:22 --name nginx quincycheng/venafi-demo-nginx:0.1