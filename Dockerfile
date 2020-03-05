FROM ubuntu:bionic

WORKDIR /app

COPY . .

RUN apt-get update

RUN apt-get install -y openjdk-8-jdk maven
