FROM ubuntu:bionic

WORKDIR /app

COPY . .

RUN apt-get update

RUN apt-get install -y vim certbot

RUN ./build

RUN ./install_kurento

RUN ./install_docker

# todo: <edit config files>
# todo: <generate certificate>

CMD ./run
