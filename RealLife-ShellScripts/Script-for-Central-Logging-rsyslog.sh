#!/bin/bash

#Author: Radhakanta PADHAN
#Date Created: 04/10/2021
#Description: This script for Central Logging
#Date Modified: 04/10/2021

#Script to trace /var/log/messages file
#Run the script in the background
#User/admin notification
#Schedule the script through cronjob

#Trace the log file:
#vi /root/logtail
#!/bin/bash
tail -fn0 /var/log/messages | while read line
do
	echo $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline"
        if [ $? = 0 ]
        then
        echo $line >> /tmp/filtered-messages
        fi
done

--------------------------------------------------------------------

#Run script in the background:
nohup /root/logtail &

--------------------------------------------------------------------

#Notification:
vi /root/Log-Alert
#!/bin/bash

systems="imran_ny@hotmail.com,charles.gorden@email.com"
if [ -s /tmp/filtered-messages ]
then
    cat /tmp/filtered-messages | sort | uniq | mail -s "CHECK: Syslog Errors" $systems
    rm /tmp/filtered-messages
else
fi

--------------------------------------------------------------------

#Schedule the Notification to run every 15 minutes:
*/15 * * * * /root/Log-Alert