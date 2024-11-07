FROM dvmarques/openjdk-17-jdk-alpine-with-timezone
WORKDIR /app
COPY *.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT [ "java", "-jar",app.jar ]
