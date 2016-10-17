FROM xxstop/base
MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get -y install python-pip
# RUN pip --proxy 172.19.13.55:1080 install itchat
# RUN pip --proxy 172.19.13.55:1080 install pillow
RUN pip install itchat
RUN pip install pillow

