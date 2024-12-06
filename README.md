# venafi-demo-webservers

## How to deploy
1. Install Docker and docker-compose.   Be sure to execute tsteps at https://docs.docker.com/engine/install/linux-postinstall/
2. Download `docker-compose.yml`
3. Execute: `docker-compose pull`
4. Execute: `docker-compose up -d`

## Points to note at Venafi
1. Create "onboard discovery"
2. Change "monoitoring" to "provisioning"
3. Update "port" for "validation" 

## Details
The following table use `localhost` as an example.   Please update them to suit your demo environment accordingly.

|                  | **Apache**                         | **nginx**                         | **Tomcat**                               |
|------------------|------------------------------------|-----------------------------------|------------------------------------------|
| **HTTPS URL**    | https://localhost:10443            | https://localhost:11443           | https://localhost:12443                  |
| **SSH Command**  | ssh demouser@localhost -p 10022    | ssh demouser@localhost -p 11022   | ssh demouser@localhost -p 12022          |
| **HTTPS Port**    | 10443            | 11443           | 12443                  |
| **SSH Port**  | 10022    | 11022   | 12022          |
| **SSH User**     | demouser                           | demouser                          | demouser                                 |
| **SSH Password** | Cyberark1                          | Cyberark1                         | Cyberark1                                |
| **Root Password**| root |root |root |
| **Image**        | quincycheng/venafi-demo-apache:0.1 | quincycheng/venafi-demo-nginx:0.1 | quincycheng/venafi-demo-tomcat:0.1       |
| Path to Cert     | /usr/local/apache2/conf/server.crt | /usr/nginx/ssl.crt                | n/a                                      |
| Path to Key      | /usr/local/apache2/conf/server.key | /usr/nginx/ssl.key                | n/a                                      |
| Path to JKS      | n/a                                | n/a                               | /usr/local/tomcat/conf/localhost-rsa.jks |
| Keytool Path | n/a | n/a | /opt/java/openjdk/bin |
| JDK Version | n/a | n/a | openjdk 21.0.5 2024-10-15 LTS |
| Inject commands (standard workflow) for stage 1100 | /usr/local/apache2/bin/apachectl -k graceful | nginx -s reload | curl -u robot:robot http://localhost:8080/manager/text/sslReload |