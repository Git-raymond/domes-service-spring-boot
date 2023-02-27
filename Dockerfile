FROM ubuntu
RUN apt-get update -y
RUN apt-get install wget -y
RUN wget https://download.oracle.com/java/11/latest/jdk-11_linux-x64_bin.deb
RUN apt-get -qqy install ./jdk-11_linux-x64_bin.deb -y
RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-11/bin/java 1111
COPY target/domes-0.0.1-SNAPSHOT.war app.war
ENTRYPOINT ["java", "-war", "app.war"]