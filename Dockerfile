FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get install -y redis-server

EXPOSE 6379
