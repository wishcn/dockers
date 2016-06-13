FROM resin/rpi-raspbian:latest

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install wget 

RUN wget -O /usr/local/share/phddns_raspberry.tgz http://download.oray.com/peanuthull/embed/phddns_raspberry.tgz
RUN tar zxvf /usr/local/share/phddns_raspberry.tgz -C /usr/local/share

CMD ["/usr/local/share/phddns2/oraynewph start"]


