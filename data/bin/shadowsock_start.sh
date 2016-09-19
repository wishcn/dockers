#!/bin/bash
ulimit -n 8000
echo `ulimit -n`
ssserver -c /etc/shadowsocks/config.json
