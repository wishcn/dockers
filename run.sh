#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
BSDIR=${BSDIR/\//\/\/}

CMD="winpty docker run -it --rm --name windev --privileged
        -v $BSDIR//..//PhpstormProjects://w//xxstop//PhpstormProjects
        -v $BSDIR//root//.tmux.conf://root//.tmux.conf
        xxstop/windev zsh"

echo $CMD
$CMD
