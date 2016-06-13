FROM centos:centos7
MAINTAINER Luo Tao <lotreal@gmail.com>

RUN yum -y update
RUN yum -y install python-setuptools
RUN easy_install pip && pip install shadowsocks

ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*

WORKDIR /etc/shadowsocks

CMD ["ss_run"]
