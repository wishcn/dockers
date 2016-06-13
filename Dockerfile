FROM ubuntu:latest
 
MAINTAINER xxstop <xxstop@qq.com>
 
RUN apt-get update
RUN apt-get -y upgrade
 
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server mysql-client supervisor

RUN /etc/init.d/mysql start &&\  
    mysql -u root -p -e "grant all privileges on *.* to 'root'@'%' identified by 'root';"

ENV MYSQL_RUN_USER mysql
ENV MYSQL_RUN_GROUP mysql

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*
 
RUN mkdir -p /var/log/supervisor  
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 3306
 
CMD ["/usr/local/bin/mysql_start.sh"]
