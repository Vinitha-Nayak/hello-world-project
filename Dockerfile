FROM maven:alpine as maven
WORKDIR /app
COPY ./ ./
RUN mvn package -DskipTests

FROM maven:alpine
WORKDIR /app
COPY --from=maven /app/target/helloworld-1.5-SNAPSHOT.war /app//usr/local/tomcat/webapps/
ENTRYPOINT ["java", "-war", "/app/helloworld.war"]  
 
