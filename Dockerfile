FROM resin/rpi-raspbian:latest

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD http://download.oray.com/peanuthull/embed/phddns_raspberry.tgz /tmp/

RUN cd /tmp && tar xzf phddns_raspberry.tgz
RUN cd /tmp/phddns2 && ./oraynewph start

EXPOSE 16062

CMD ["/usr/bin/supervisord"]
