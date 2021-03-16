# Pull base image 
#From tomcat:8-jre8 

# Maintainer 
#MAINTAINER "bglr.vk8@gmail.com" 
#COPY ./webapp.war /usr/local/tomcat/webapps
FROM tomcat:latest
LABEL maintainer="Nidhi Gupta"
ADD ./target/*.war /usr/local/tomcat/webapps/
EXPOSE 8082
CMD ["catalina.sh", "run"]
