FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get -y install aria2
ADD https://github.com/binux/yaaw/archive/master.zip /tmp
RUN unzip /tmp/master.zip -d /tmp && mkdir -p /data/www && cp -r /tmp/yaaw-master/. /data/www

EXPOSE 81 6800
