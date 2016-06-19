FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get -y install dnsmasq

EXPOSE 53 53/udp
