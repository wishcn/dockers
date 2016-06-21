FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

RUN usermod -u 99 nobody && \
    usermod -g 100 nobody

RUN apt-get install -y mariadb-server mariadb-client

# Tweak my.cnf
RUN sed -i -e 's#\(bind-address.*=\).*#\1 0.0.0.0#g' /etc/mysql/my.cnf
RUN sed -i -e 's#\(log_error.*=\).*#\1 /db/mysql_safe.log#g' /etc/mysql/my.cnf
RUN sed -i -e 's/\(user.*=\).*/\1 nobody/g' /etc/mysql/my.cnf

# InnoDB engine to use 1 file per table, vs everything in ibdata.
RUN echo '[mysqld]' > /etc/mysql/conf.d/innodb_file_per_table.cnf
RUN echo 'innodb_file_per_table' >> /etc/mysql/conf.d/innodb_file_per_table.cnf

EXPOSE 3306 

VOLUME /db
