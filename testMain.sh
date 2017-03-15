# A main script to check the resource for the machine
# Andrew Zhang 3/12/2017

# The script will generate a output log file in the format like:
# 170312110336.log

export logF=$(date +%y%m%d%H%M%S).log

echo -e "\nHello, $LOGNAME, cuurent time is `date`" 2>&1 | tee -a $logF
echo -e "\nThe current resouce uasage on the linux machine "`hostname`" is: " 2>&1 | tee -a $logF

vmstat 2>&1 | tee -a $logF 

