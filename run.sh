#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -it --name phddns --privileged 
	-p 6060:6060/tcp
	xxstop/phddns"

echo $CMD
$CMD
