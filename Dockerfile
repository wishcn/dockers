FROM resin/rpi-raspbian:latest

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y supervisor cron python-pip python-lxml
RUN pip install -y beautifulsoup4

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*
#RUN sed -i s/required/sufficient/g /etc/pam.d/cron

CMD ["start"]
