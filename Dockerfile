FROM dvmarques/openjdk-17-jdk-alpine-with-timezone
WORKDIR /app
COPY target/Hibernate5-0.0.1-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT [ "java", "-jar","app.jar" ]
