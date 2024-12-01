# venafi-demo-webservers

## How to use
1. Download docker-compose.yml
2. docker-compose pull
3. docker-compose up -d

## Details

|                  | **Apache**                         | **nginx**                         | **Tomcat**                               |
|------------------|------------------------------------|-----------------------------------|------------------------------------------|
| **HTTPS URL**    | https://localhost:10443            | https://localhost:11443           | https://localhost:12443                  |
| **SSH Command**  | ssh demouser@localhost -p 10022    | ssh demouser@localhost -p 11022   | ssh demouser@localhost -p 12022          |
| **HTTPS Port**    | 10443            | 11443           | 12443                  |
| **SSH Port**  | 10022    | 11022   | 12022          |
| **SSH User**     | demouser                           | demouser                          | demouser                                 |
| **SSH Password** | Cyberark1                          | Cyberark1                         | Cyberark1                                |
| **Image**        | quincycheng/venafi-demo-apache:0.1 | quincycheng/venafi-demo-nginx:0.1 | quincycheng/venafi-demo-tomcat:0.1       |
| Path to Cert     | /usr/local/apache2/conf/server.crt | /usr/nginx/ssl.crt                | n/a                                      |
| Path to Key      | /usr/local/apache2/conf/server.key | /usr/nginx/ssl.key                | n/a                                      |
| Path to JKS      | n/a                                | n/a                               | /usr/local/tomcat/conf/localhost-rsa.jks |
