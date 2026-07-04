# Stage 1: Build the application using JDK 21
FROM eclipse-temurin:21-jdk-alpine AS build

WORKDIR /app

# Copy the Maven wrapper and pom.xml first for better caching
COPY mvnw mvnw
COPY .mvn .mvn
COPY pom.xml .

# Make the mvnw executable
RUN chmod +x mvnw

# Download dependencies first (cached for faster builds)
RUN ./mvnw dependency:go-offline -B

# Copy the rest of the code
COPY src src

# Build the application
RUN ./mvnw clean package -DskipTests

# Stage 2: Create a lightweight runtime image
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]