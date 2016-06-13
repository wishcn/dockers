#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name ss --privileged -v $BSDIR/shadowsocks:/etc/shadowsocks -p 25735:25735/udp -p 25735:25735/tcp lotreal/shadowsocks"

echo $CMD
$CMD
