FROM ubuntu

MAINTAINER xxstop <xxstop@qq.com>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y mariadb-server mariadb-client

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

EXPOSE 3306 

CMD ["mysqld_safe"]
