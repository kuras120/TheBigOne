FROM adoptopenjdk/openjdk11:latest
EXPOSE 8080
ADD /target/thebigone-0.0.1-SNAPSHOT.war thebigone-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","thebigone-0.0.1-SNAPSHOT.war"]