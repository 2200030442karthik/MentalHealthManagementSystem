FROM openjdk:17
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y maven
RUN mvn clean package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "target/mental-health-management-0.0.1-SNAPSHOT.jar"]
