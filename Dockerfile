# pull the tomcat docker image from docker hub
FROM tomcat:latest

COPY mvn clean package
# copying the the helloworld target war package from the target to destincation tomcat Container directory
COPY app/target/helloworld-1.5-SNAPSHOT.war /app/usr/local/tomcat/webapps/
