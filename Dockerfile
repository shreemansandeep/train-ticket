#  FROM tomcat:latest

# LABEL maintainer="dockersandheep"

# ADD ./target/*.war /usr/local/tomcat/webapps/

# EXPOSE 8080

# CMD ["catalina.sh", "run"] 

################################

FROM tomcat:9.0-jre17-alpine

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/trainticketsystem.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

################################

# # Stage 1: Build WAR with Maven Alpine
# FROM maven:3.9.11-eclipse-temurin-17-alpine AS builder
# WORKDIR /app
# COPY . .
# RUN mvn clean package -DskipTests

# # Stage 2: Minimal Runtime Image
# FROM tomcat:9.0-jre17-alpine
# RUN rm -rf /usr/local/tomcat/webapps/*
# COPY --from=builder /app/target/trainticketsystem.war /usr/local/tomcat/webapps/ROOT.war
# EXPOSE 8080
# CMD ["catalina.sh", "run"]
