# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container at /app
COPY target/nothing-app-0.0.1-SNAPSHOT.jar /app/app.jar

# Specify the default command to run on container startup
CMD ["java", "-jar", "app.jar"]
