#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
BSDIR=${BSDIR/\//\/\/}

CMD="winpty docker run -d --name windev --privileged
        -v $BSDIR//..//PhpstormProjects://w//xxstop//PhpstormProjects
        xxstop/windev"

echo $CMD
$CMD
