#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name cow --privileged 
    -v $BSDIR/.cow/rc:/root/.cow/rc
    -v $BSDIR/etc/cow:/etc/cow
	-v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
	-p 7777:7777/tcp -p 7777:7777/udp
	xxstop/cow"

echo $CMD
$CMD
