#!/bin/bash

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo " ERROR: Not a root user , Please get root user access"
fi
yum install mysql -y
    

