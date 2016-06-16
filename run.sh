#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name crond --privileged
	-v $BSDIR/bin/start:/usr/local/bin/start
        -v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
        xxstop/crond"

echo $CMD
$CMD
