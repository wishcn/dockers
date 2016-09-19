#!/bin/bash
#for shadowsock connection limmit on the port
#this script will check the ip connection on one port if more than one ip
#it will track this port with kill them to stop connection
#
#----------

echo "---------------------------------------------------------"
echo "#########################################################"
echo "#########################################################"
echo "#########################################################"
echo "######### #######    ######## ####  ## ########### ######"
echo "######### ##### ###### ###### ## ###### ######### #######"
echo "######### #### ######## ##### # ######## ####### ########"
echo "######### #### ######### ####  ########## ##### #########"
echo "######### #### ######### #### ############ ## ###########"
echo "######### ##### ####### ##### ############## ############"
echo "######### #######     ####### ############# #############"
echo "######### ################### ############ ##############"
echo "######### ################### ########### ###############"
echo "######### ################### ######### #################"
echo "######   ################################################"
echo "#########################################################"
echo "#########################################################"
echo "Script Monitor the Port IP Connection,check if one Port  "
echo "more than ip you set, Script will block the conneciton   "
echo "check the log:(log.txt)"
echo "check the pid on each ip address: (address.txt)"
echo "check the ip connection:  (ip.txt)"
echo "By Jory, Any question please  Contact:1032473410@qq.com  "
echo "Script is Running ......................................."
echo "---------------------------------------------------------"


#Motify to meet you need:
#which port to check
check_port=$1
#ip store tmp file 
ipfile="/var/log/port_${1}.log"
logfile="/var/log/log_${1}.log"
#port ip connection limit
iplimit=1
#Script run between time
sleep_time=50

#-------------------------------------------------------------------------------------------------------

#do main:
echo "" > $logfile
while(true)
do
netstat -anopt | grep $check_port | awk '{print $5}' |awk -F ':' '{print $1}' |grep -v "0.0.0.0" |tr -s '\n'|awk '!x[$0]++' > $ipfile


#get file line number
i=0;
     for ipadd in $(cat $ipfile);do
     ((i++))
     done

f_zise=`du -k $ipfile|awk '{print $1}'`
if [ $f_zise == 0 ]; then
line_number=0
else
line_number=$i
     

fi


    if [ $line_number -gt $iplimit ]; then
        i2=1
        for ipadd2 in $(cat $ipfile);do
        
        if [ $i2 -lt $iplimit ] || [ $i2 -eq $iplimit ] ; then
             date >> $logfile
             echo "ip address:"$ipadd2"-online:" >> $logfile
		
        else 
        netstat -anopt | grep $ipadd2 | awk '{print $7}'|awk -F '/' '{print $1}' > $ipadd2.txt
            for pid in $(cat $ipadd2.txt);do
             
             echo $ipadd2":"$pid"[pid]:killed" >> $logfile
             kill  $pid
              
            done

        fi
        ((i2++))
        done
        echo "---------------------------------------" >> $logfile
    elif [ $line_number -gt 0 ] || [ $line_number -lt $iplimit ] || [ $line_number -eq $iplimit ]; then
        for ipaddr in $(cat $ipfile);do
        date >> $logfile
        echo "ip address:"$ipaddr"-online" >> $logfile
        done
        echo "---------------------------------------" >> $logfile
    
    fi

    sleep $sleep_time
done
