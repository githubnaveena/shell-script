#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"
LOG_DIR=/home/centos/shell-script-logs
SCRIPTNAME=$0
DATE=$(date +%F)
LOGFILE=$LOG_DIR/$SCRIPTNAME-$DATE.log
userid=$(id -u)
if [ $userid -ne 0 ]
then
echo -e "$R get root access $N"
exit 1
fi

validate()
{
 if [ $1 -ne 0 ]
  then
 echo -e "$R $2 is Failure $N"
 exit 1
 else
 echo -e "$G $2 Sucess $N" 
 fi
}

for i in $@
do
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then
        echo -e "$R package $i is not installed, lets install$N"
        yum install $i -y &>>$LOGFILE
    else
        echo -e "$G $i package is already installed$N"  
        exit 1
    fi      
    validate $? "$i"
done
