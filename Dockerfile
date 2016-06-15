FROM resin/rpi-raspbian

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y supervisor cron

RUN sed -i s/required/sufficient/g /etc/pam.d/cron
RUN crontab /etc/crontab

CMD ["/usr/bin/supervisord"]
