FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} montine.jar
ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=prod", "/montine.jar"]