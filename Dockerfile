FROM amazoncorretto:17-alpine

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} target.jar

ENTRYPOINT ["java", "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}", "-jar", "/target.jar"]
