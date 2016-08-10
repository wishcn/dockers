#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run --rm -it --name windev --privileged
        -v $BSDIR/../PhpstormProjects:/w/xxstop/PhpstormProjects
        -v $BSDIR/root/.tmux.conf:/root/.tmux.conf
        xxstop/windev zsh"

echo $CMD
$CMD
