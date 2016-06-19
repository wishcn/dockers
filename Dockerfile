FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get install -y cron python-pip python-lxml
RUN pip install beautifulsoup4 requests
