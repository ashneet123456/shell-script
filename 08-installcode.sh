#!/bin/bash
#our program gaol i to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "ERROr: Plaese run this script with root acces"
exit 1

else 
echo "you are a root user"
fi

yum install mysql -y
if [ $? -ne 0 ]
then
echo "installtion is  failed"
exit 1
else 
echo "installtion is succesful"
fi
