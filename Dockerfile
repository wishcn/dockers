FROM xxstop/base
MAINTAINER xxstop <xxstop@qq.com>

ADD http://shadowsocks.org/debian/1D27208A.gpg /tmp/1D27208A.gpg
RUN apt-key add /tmp/1D27208A.gpg
RUN apt-get install apt-transport-https

RUN echo "deb http://shadowsocks.org/ubuntu xenial main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --force-yes shadowsocks-libev
