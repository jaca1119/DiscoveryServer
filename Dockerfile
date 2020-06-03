FROM adoptopenjdk/openjdk11:jre11u-ubuntu-nightly
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]