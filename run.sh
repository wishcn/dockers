#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name windev --privileged
	-v $BSDIR/scripts:/usr/local/scripts
        xxstop/windev"

echo $CMD
$CMD
