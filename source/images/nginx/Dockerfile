FROM iliyan/docker-nginx-sshd

#RUN /usr/sbin/adduser -h /home/demouser -s /bin/sh -D demouser 
#RUN pwconv
        


COPY style.css /sites/
COPY index.html /sites/

COPY nginx.crt /usr/nginx/ssl.crt
COPY nginx.key /usr/nginx/ssl.key

COPY default /etc/nginx/sites-enabled/

ADD run_servers.sh /

RUN /usr/sbin/adduser --home /home/demouser --shell /bin/sh demouser 
RUN echo "demouser:Cyberark1"|chpasswd


EXPOSE 443