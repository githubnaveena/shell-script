#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"
SCRIPTNAME=$0
DATE=$(date +%F)
LOGFILE=/tmp/$SCRIPTNAME-$DATE.log
userid=$(id -u)
if [ $userid -ne 0 ]
then
echo -e "$R get root access $N"
exit 1
fi

# validate()
# {
#  if [ $1 =ne 0]
#   then
#  echo -e "$R $1 is Failure $N"
#  else
#  echo -e "$G $1 Sucess $N" 
# }

for i in $@
do
   if [ yum list installed $i -ne 0 ]
        yum install $i -y >>$LOGFILE
    else
        echo "$G package is already installed$N"  
    fi      
    validate $i
done