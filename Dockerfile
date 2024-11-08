FROM maven:latest AS build

WORKDIR /app

COPY . .

RUN mvn clean package -Dmaven.test.skip

FROM openjdk:17-jdk-slim

COPY --from=build /app/target/cardatabase-0.0.1-SNAPSHOT.jar /app/cardatabase.jar

WORKDIR /app

EXPOSE 8000

CMD ["java", "-jar", "/app/cardatabase.jar"]
