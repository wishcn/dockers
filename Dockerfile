FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get -y install aria2
ADD https://github.com/ziahamza/webui-aria2/archive/master.zip /tmp
RUN unzip /tmp/master.zip -d /tmp && mkdir -p /data/www && cp -r /tmp/webui-aria2-master/. /data/www

EXPOSE 81 
EXPOSE 6800
