FROM xxstop/base
MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get -y install python-pip
RUN apt-get -y install net-tools
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install iptables-persistent
RUN apt-get -y install ufw
RUN apt-get -y install nginx

RUN pip install --upgrade pip
RUN pip install shadowsocks
