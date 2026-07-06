# Build stage using Java 21 to compile the code
FROM eclipse-temurin:21-jdk-alpine AS build

WORKDIR /app

# Copy Maven files first 
COPY mvnw mvnw
COPY .mvn .mvn
COPY pom.xml .

# Make the wrapper executable
RUN chmod +x mvnw

# Download dependencies (saves time on rebuilds)
RUN ./mvnw dependency:go-offline -B

# Copy source code and build
COPY src src
RUN ./mvnw clean package -DskipTests

# Runtime stage lightweight image for running the app
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Copy the built JAR from the build stage
COPY --from=build /app/target/*.jar app.jar

# Port for the API
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]