
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY build/libs/*.jar app.jar

RUN ./gradlew bootJar

EXPOSE 8000

ENTRYPOINT java $JAVA_OPTS -jar build/libs/seminar-2025-springboot-assignment-complete-0.0.1-SNAPSHOT.jar
