#!/bin/bash

DATE=$(date +%F)
SCRIPTNAME=$0
LOGFILE=/tmp/$SCRIPTNAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
validate()
{
if [ $1 -ne 0 ]
then
 echo -e "$2 $R FAILURE $N"
 exit 1
 else 
 echo -e "$2 $G SUCCESS $N"
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
yum install mysql -y &>>$LOGFILE
validate $? "Installation of mysql"
 yum install postfix -y &>>$LOGFILE
 validate $? "Installato of postfix"
 

    

