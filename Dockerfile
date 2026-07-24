#  FROM tomcat:latest

# LABEL maintainer="dockersandheep"

# ADD ./target/*.war /usr/local/tomcat/webapps/

# EXPOSE 8080

# CMD ["catalina.sh", "run"] 

FROM tomcat:10.1-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/trainticketsystem.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]