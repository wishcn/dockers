#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name shadowsocks --privileged 
	-v $BSDIR/etc/shadowsocks:/etc/shadowsocks 
	-v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
	-p 25735:25735/udp -p 25735:25735/tcp 
	lotreal/shadowsocks"

echo $CMD
$CMD
