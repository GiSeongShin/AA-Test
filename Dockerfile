FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim

WORKDIR /app

COPY /home/runner/work/AA-Test/AA-Test/target/template-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
