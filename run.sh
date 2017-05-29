#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name redis --privileged
     -v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
     xxstop/redis"

echo $CMD
$CMD
