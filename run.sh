#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name nginxphp --privileged 
	-v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
	-p 80:80/tcp -p 80:80/udp
	xxstop/nginxphp"

echo $CMD
$CMD
