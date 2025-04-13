#!/bin/bash
USERID=$(id -u)
#this function should validate previous commad 
VALIDATE(){
 if [ $1 -ne 0 ]
then
echo "$2is  failed"
exit 1
else 
echo "$2 is succesful"
fi
}

if [ $USERID -ne 0 ]
then
echo "ERROr: Plaese run this script with root acces"
exit 1

else 
echo "you are a root user"
fi

yum install mysql -y
VALIDATE $? "Installing mysql"


yum install postfix -y

VALIDATE $? "Installing postfix"