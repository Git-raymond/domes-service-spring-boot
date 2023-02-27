FROM ubuntu
RUN apt-get update -y
apt-get install openjdk-11-jdk
COPY target/domes-0.0.1-SNAPSHOT.war app.war
ENTRYPOINT ["java", "-war", "app.war"]