# select parent image
FROM maven:3.6.3-jdk-8
EXPOSE 8080

 
# package our application code
RUN mvn clean package
 
# set the startup command to execute the jar
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
