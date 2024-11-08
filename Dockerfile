# Use an official OpenJDK base image from Docker Hub
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY target/my-spring-boot-app.jar /app/my-spring-boot-app.jar

# Expose the port your application runs on
EXPOSE 8080

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "/app/my-spring-boot-app.jar"]