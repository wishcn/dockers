#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run --rm -it --name windev --privileged
	-v c:/Users/xxsto/PhpstormProjects:/root/data
        xxstop/windev zsh"

echo $CMD
$CMD
