#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name nginxphp --privileged 
	-v $BSDIR/data:/data
	-v $BSDIR/etc/nginx/sites-available:/etc/nginx/sites-available
	-v $BSDIR/scripts:/usr/local/scripts
	-v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
	-p 80:80/tcp -p 80:80/udp
	-p 8000:8000/tcp -p 8000:8000/udp
	xxstop/nginxphp"

echo $CMD
$CMD
