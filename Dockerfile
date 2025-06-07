# Use Maven to build
FROM maven:3.9.4-eclipse-temurin-17 as builder
WORKDIR /app
COPY . .
RUN mvn clean package

# Use JDK for running
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=builder /app/target/hello-github-actions-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
