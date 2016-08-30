FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get -y install curl
RUN curl -L git.io/cow | bash

EXPOSE 7777
