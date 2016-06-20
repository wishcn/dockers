FROM resin/rpi-raspbian:latest

MAINTAINER xxstop <xxstop@qq.com>

ENV HOME /env

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y supervisor 

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ADD ./sbin /usr/local/sbin
RUN chmod a+x /usr/local/sbin/*

ADD ./scripts /usr/local/scripts
ADD ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["x_init"]
