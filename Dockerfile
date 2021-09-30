# Pull base image
From tomcat:v1.0
# Maintainer
MAINTAINTER "https://github.com/dodoasong/Docker-Jenkins-Pipe.git"
COPY ./target/Docker-Jenkins-Pipe.war /usr/local/tomcat:v1.0/webapps
