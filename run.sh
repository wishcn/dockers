#!/usr/bin/env bash
BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

CMD="docker run -d --name dnsmasq --privileged 
	-v $BSDIR/etc/dnsmasq.conf:/etc/dnsmasq.conf
	-v $BSDIR/etc/hosts.dnsmasq:/etc/hosts.dnsmasq
	-v $BSDIR/etc/resolv.dnsmasq.conf:/etc/resolv.dnsmasq.conf
	-v $BSDIR/etc/dnsmasq.d:/etc/dnsmasq.d 
	-p 53:53/tcp -p 53:53/udp
	xxstop/dnsmasq"

echo $CMD
$CMD
