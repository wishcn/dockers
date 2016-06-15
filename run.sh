#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name cron --privileged 
	-v $BSDIR/etc/crontab:/etc/crontab
	-v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
	-v $BSDIR/data:/data
	xxstop/cron"

echo $CMD
$CMD
