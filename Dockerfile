FROM xxstop/base
MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get -y install python-pip
RUN apt-get -y install net-tools
RUN pip install --upgrade pip
RUN pip install shadowsocks
