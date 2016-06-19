#!/usr/bin/env bash

read -d '' crontabStr << EOF
10 8 * * * python /data/assassin/v2ex_sign.py >> /var/log/v2ex_sign.log
EOF

echo "$crontabStr" | crontab
