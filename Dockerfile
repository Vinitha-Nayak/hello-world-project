FROM maven:alpine as maven

COPY ./ ./
RUN mvn package -DskipTests

FROM maven:alpine

COPY --from=maven ./target/helloworld-1.5-SNAPSHOT.war /usr/local/tomcat/webapps/
 
