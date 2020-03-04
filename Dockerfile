FROM ubuntu:bionic

WORKDIR /app

COPY . .

RUN apt-get update

RUN apt-get install -y vim certbot

RUN ./build

RUN ./install_kurento

RUN ./install_docker

COPY /server_files/config_files/WebRtcEndpoint.conf.ini /etc/kurento/modules/kurento/WebRtcEndpoint.conf.ini

COPY /server_files/config_files/turnserver.conf /etc/turnserver.conf

COPY /server_files/config_files/coturn /etc/default/coturn

# todo: <generate certificate>

CMD ./run
