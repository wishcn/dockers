FROM resin/rpi-raspbian:latest

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get update
RUN apt-get -y upgrade

ADD http://download.oray.com/peanuthull/embed/phddns_raspberry.tgz /tmp/
RUN cd /tmp && tar xzf phddns_raspberry.tgz -C "/usr/local"

ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*

EXPOSE 6060

WORKDIR /usr/local/phddns2

CMD ["phddns_run"]
