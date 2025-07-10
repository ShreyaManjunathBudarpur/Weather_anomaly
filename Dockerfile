# Start with Java base image
FROM openjdk:17-jdk-slim

# Add metadata
LABEL maintainer="afnanshaik424@gmail.com"

# Set working directory
WORKDIR /app

# Copy the jar file
COPY target/weather-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
