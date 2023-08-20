#!/bin/bash

R="\e[32m"
G="\e[31m"
N="\e[0m"

validate()
{
 if [ $1 =ne 0]
  then
 echo -e "$R $1 is Failure $N"
 else
 echo -e "$G $1 Sucess $N" 
}


for i in {@}
do
    sudo yum install $@ -y
    validate i
done