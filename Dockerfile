FROM resin/rpi-raspbian:latest

MAINTAINER xxstop <xxstop@qq.com>

ENV HOME /root

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install supervisor 

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ADD ./sbin /usr/local/sbin
RUN chmod a+x /usr/local/sbin/*

RUN apt-get -y install ca-certificates

ADD ./scripts /usr/local/scripts

CMD ["x_init"]
