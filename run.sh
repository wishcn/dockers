#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name phddns --privileged 
    -v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
    -p 16062:16062/tcp
    xxstop/phddns"

echo $CMD
$CMD
