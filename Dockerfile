FROM ubuntu:latest
 
MAINTAINER xxstop <xxstop@qq.com>
 
RUN apt-get update
RUN apt-get -y upgrade
 
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apache2 libapache2-mod-php5 php5-mysql php5-gd php-pear php5-curl curl lynx-cur
 
RUN a2enmod php5
RUN a2enmod rewrite
 
RUN sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php5/apache2/php.ini
RUN sed -i "s/error_reporting = .*$/error_reporting = E_ERROR | E_WARNING | E_PARSE/" /etc/php5/apache2/php.ini
 
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
 
EXPOSE 80
 
# ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf
 
CMD /usr/sbin/apache2ctl -D FOREGROUND
