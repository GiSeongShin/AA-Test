# 1. Build Stage
# FROM maven:3.8.5-openjdk-17 AS build
FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvnw clean package -DskipTests

# 2. Run Stage
# FROM openjdk:17-jdk-slim
FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]