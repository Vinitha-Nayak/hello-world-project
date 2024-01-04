FROM maven:alpine as maven

COPY ./ ./

COPY --from=maven ./target/helloworld-1.5-SNAPSHOT.war /usr/local/tomcat/webapps/
 
