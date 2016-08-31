#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name mariadb --privileged
     -v $BSDIR/scripts:/usr/local/scripts
     -v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
     xxstop/mariadb"

echo $CMD
$CMD
