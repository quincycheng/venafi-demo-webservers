FROM tomcat:11.0
RUN apt-get update && apt-get install -y openssh-server curl
RUN mkdir /var/run/sshd
RUN echo "root:root" | chpasswd
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN /usr/sbin/adduser --home /home/demouser --shell /bin/sh demouser 
RUN echo "demouser:Cyberark1"|chpasswd
EXPOSE 22

RUN mkdir -p /usr/local/tomcat/webapps/ROOT
COPY style.css /usr/local/tomcat/webapps/ROOT/
COPY index.html /usr/local/tomcat/webapps/ROOT/

ENV JAVA_HOME=/opt/java/openjdk
ENV CATALINA_HOME=/usr/local/tomcat
RUN cp -avT $CATALINA_HOME/webapps.dist/manager $CATALINA_HOME/webapps/manager

COPY server.xml /usr/local/tomcat/conf/
COPY localhost-rsa.jks /usr/local/tomcat/conf/
COPY tomcat-users.xml  /usr/local/tomcat/conf/

ADD run_servers.sh /
CMD ["/run_servers.sh"]
