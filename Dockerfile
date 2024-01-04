FROM maven:alpine as maven

COPY ./ ./
RUN mvn package -DskipTests

FROM maven:alpine

COPY --from=maven /app/target/helloworld-1.5-SNAPSHOT.war /app//usr/local/tomcat/webapps/
 
