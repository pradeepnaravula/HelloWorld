FROM tomcat:9.0
COPY restart-tomcat.sh /usr/local/tomcat/restart-tomcat.sh
RUN chmod +x /usr/local/tomcat/restart-tomcat.sh
