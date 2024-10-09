FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim

WORKDIR /app

COPY target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
