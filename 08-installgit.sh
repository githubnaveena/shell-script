#!/bin/bash

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo " ERROR: Not a root user , Please get root user access"
    exit 1
 #else
  #  echo "Please get root user access"   
fi
yum install mysql -y

if [ $? -ne 0 ]
then
 echo "installing is not sucess"
 exit 1
 else 
 echo " instllation is success"
 fi

 yum install postfix -y
 if [ $? -ne 0 ]
then
 echo "installing is not sucess"
 exit 1
 else 
 echo " instllation of post fix is success"
 fi

    

