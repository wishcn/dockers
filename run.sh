#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name dnsmasq --privileged 
     -v $BSDIR/etc/associate.d:/etc/associate.d
     -v $BSDIR/etc/dnsmasq.d:/etc/dnsmasq.d 
     -v $BSDIR/etc/dnsmasq.conf:/etc/dnsmasq.conf
     -v $BSDIR/supervisord.conf:/etc/supervisor/conf.d/supervisord.conf
     -p 53:53/tcp -p 53:53/udp
     xxstop/dnsmasq"

echo $CMD
$CMD
