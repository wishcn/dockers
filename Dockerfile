FROM resin/rpi-raspbian:latest

MAINTAINER xxstop <xxstop@qq.com>

ENV HOME /root

ADD ./sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install supervisor 

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ADD ./sbin /usr/local/sbin
RUN chmod a+x /usr/local/sbin/*

RUN apt-get -y install ca-certificates
RUN apt-get -y install apt-transport-https

ADD ./scripts /usr/local/scripts

CMD ["x_init"]
