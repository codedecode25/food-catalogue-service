FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim
WORKDIR /opt
EXPOSE 9092
COPY target/*.jar /opt/app.jar
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar