#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name mariadb --privileged
        xxstop/mariadb"

echo $CMD
$CMD
