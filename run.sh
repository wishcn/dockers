#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name webs --privileged -v $BSDIR/www:/var/www/site -v $BSDIR/sites-enabled:/etc/apache2/sites-enabled -p 80:80/udp -p 80:80/tcp xxstop/apache_php"

echo $CMD
$CMD
