#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name shadowsocks --privileged --restart=always
    -v $BSDIR/etc/shadowsocks:/etc/shadowsocks 
    -v $BSDIR/data/bin:/data/bin
    -v $BSDIR/scripts:/usr/local/scripts
    -v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
    -p 21541:21541/udp -p 21541:21541/tcp
    -p 24090:24090/udp -p 24090:24090/tcp
    -p 25919:25919/udp -p 25919:25919/tcp
    -p 24138:24138/udp -p 24138:24138/tcp
    xxstop/shadowsocks"

echo $CMD
$CMD
