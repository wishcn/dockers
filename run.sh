#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name mysql --privileged 
    -v $BSDIR/bakdata:/usr/share/bakdata 
    -v $BSDIR/script:/usr/share/script 
    -p 3306:3306/udp -p 3306:3306/tcp xxstop/mysql"

echo $CMD
$CMD
