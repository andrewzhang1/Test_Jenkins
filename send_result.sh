# A script to send result to "agz1117@hotmail.com"
# This script will find the last 
# 

ls -ltr > temp ; tail -l temp 

export LAST_LOG_FILE="`tail -1 temp | cut -d" " -f10`"

echo "Last log file to be sent is: $LAST_LOG_FILE"

# mail attachement
# cat $LAST_LOG_FILE | mail agz1117@hotmail.com 
