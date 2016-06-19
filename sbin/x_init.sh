#!/bin/bash

chmod a+x /usr/local/scripts/*.sh

for i in `ls /usr/local/scripts/*.sh | sort -V`
do
    echo $i
    . $i
done

exec supervisord -c /etc/supervisor/conf.d/supervisord.conf
