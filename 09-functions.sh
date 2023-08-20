#!/bin/bash

DATE =$(date +%F)
SCRIPTNAME=$0
LOGFILE=/tmp/$SCRIPTNAME-$DATE.log
validate()
{
if [ $1 -ne 0 ]
then
 echo "$2 FAILURE"
 exit 1
 else 
 echo "$2 SUCCESS"
 fi
 }

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo " ERROR: Not a root user , Please get root user access"
    exit 1
 #else
  #  echo "Please get root user access"   
fi
yum install mysql -y &>>LOGFILE
validate $? "Installation of mysql"
 yum install postfix -y &>>LOGFILE
 validate $? "Installato of postfix"
 

    

