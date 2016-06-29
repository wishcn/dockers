FROM xxstop/base
MAINTAINER xxstop <xxstop@qq.com>

RUN echo "deb http://shadowsocks.org/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --force-yes shadowsocks-libev
