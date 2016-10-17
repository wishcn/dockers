#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name itchat --privileged 
        -v $BSDIR/data:/data
	-v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
	xxstop/itchat"

echo $CMD
$CMD
