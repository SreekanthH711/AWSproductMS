FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/ProductMSDemo-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8400
ENV JAVA_OPTS=""
RUN sh -c "touch ProductMSDemo-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "ProductMSDemo-0.0.1-SNAPSHOT.jar" ]
# docker file to create docker image for ProductMSDemo
