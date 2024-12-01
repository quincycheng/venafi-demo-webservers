FROM seigetsu/httpd-sshd:2.4-alpine


RUN sed -i \
		-e 's/^#\(Include .*httpd-ssl.conf\)/\1/' \
		-e 's/^#\(LoadModule .*mod_ssl.so\)/\1/' \
		-e 's/^#\(LoadModule .*mod_socache_shmcb.so\)/\1/' \
		conf/httpd.conf

RUN chmod 4755 /bin/busybox
RUN /usr/sbin/adduser -h /home/demouser -s /bin/sh -D demouser 
RUN echo 'demouser:Cyberark1' | chpasswd
RUN echo 'root:root' | chpasswd

COPY sshd_config /etc/ssh/
COPY style.css /usr/local/apache2/htdocs/
COPY index.html /usr/local/apache2/htdocs/

COPY apache.crt /usr/local/apache2/conf/server.crt
COPY apache.key /usr/local/apache2/conf/server.key
