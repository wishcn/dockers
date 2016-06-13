FROM resin/rpi-raspbian:latest

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install wget 

RUN wget -O /usr/local/phddns_raspberry.tgz http://download.oray.com/peanuthull/embed/phddns_raspberry.tgz
RUN tar zxvf /usr/local/phddns_raspberry.tgz -C /usr/local/

ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*

WORKDIR /usr/local/phddns2

CMD ["phddns_run"]


