#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name aria2 --privileged 
    -v $BSDIR/data/down:/data/down
	-v $BSDIR/etc/aria2.conf:/etc/aria2.conf
	-v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
	-p 6800:6800/tcp -p 6800:6800/udp
	-p 81:81/tcp -p 81:81/udp
	xxstop/aria2"

echo $CMD
$CMD
