# Compilação
# Uma imagem do Linux para compilar o projeto
FROM ubuntu:latest AS build

# Instalar Java
RUN apt-get update
RUN apt-get install -y openjdk-21-jdk

# Instalar maven
RUN apt-get install -y maven

COPY . .

RUN mvn clean install

FROM eclipse-temurin:21-jdk-jammy

EXPOSE 8080

COPY --from=build /target/gamestore-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]