FROM maven:3.8.6-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/expensetracker-0.0.1-SNAPSHOT.jar expensetracker.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "expensetracker.jar"]