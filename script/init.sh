#!/bin/bash

BSDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# delete all crontab for root
crontab -r

# add script run
chmod +x $BSDIR/mysql_bak.sh

# add crontab
crontab -l > $BSDIR/mycron
echo "* * * * * $BSDIR/mysql_bak.sh > $BSDIR/mysql_bak.log" >> $BSDIR/mycron
crontab $BSDIR/mycron
rm $BSDIR/mycron

crontab -l > $BSDIR/crontab_list
