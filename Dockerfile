FROM tomcat:8.5.97-jdk8-corretto-al2
# Dummy text to test
COPY tomcat-users.xml /usr/local/tomcat/conf/ 
COPY webapps /usr/local/tomcat/webapps
COPY target/maven-web-application*.war /usr/local/tomcat/webapps/java-web-app.war
RUN chmod -R 777 /usr/local/tomcat/conf
RUN chmod -R 777 /usr/local/tomcat/webapps
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

