FROM debian:stretch

WORKDIR /app

RUN apt-get update

RUN apt-get install -y git openjdk-8-jdk maven
