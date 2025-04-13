#!/bin/bash
USERID=$(id -u)
DATE=$(date +%F)
SCRIPTNAME=$0
LOGFILE=/tmp/$SCRIPTNAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

#this function should validate previous commad 
VALIDATE(){
 if [ $1 -ne 0 ]
then
echo -e "$2is  $R failed $N"
exit 1
else 
echo -e "$2 is $G succesful $N"
fi
}

if [ $USERID -ne 0 ]
then
echo "ERROr: Plaese run this script with root acces"
exit 1

else 
echo "you are a root user"
fi

yum install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"


yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installing postfix"