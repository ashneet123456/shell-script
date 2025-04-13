#!/bin/bash
#our program gaol i to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROr: Plaese run this script with root acces"
else 
echo "you are a root user"
fi

yum install git -y