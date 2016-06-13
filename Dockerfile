FROM resin/rpi-raspbian:latest

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install dnsmasq

EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
