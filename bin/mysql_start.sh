#!/bin/bash

# run init script
/usr/share/script/init.sh

# run supervisord
/usr/bin/supervisord

# start cron 
#/usr/bin/crontab

# start mysql server
#/usr/bin/mysqld_safe

