# Use a lightweight OpenJDK 17 image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy the built jar file (from target folder) into the container
COPY target/eureka-server-0.0.1-SNAPSHOT.jar app.jar

# Expose the port Eureka server runs on (usually 8761)
EXPOSE 8761

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
