FROM ubuntu:bionic

WORKDIR /app

COPY . .

RUN ./build
