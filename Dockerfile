FROM xxstop/base
MAINTAINER xxstop <xxstop@qq.com>

RUN echo "deb http://shadowsocks.org/debian trusty main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install shadowsocks-libev
