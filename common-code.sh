#!/bin/bash

#!/bin/bash

USERID=$(id -u)
SCRIPT_NAME=$(echo $0|cut -d '.' -f1)
DATE=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#echo "starting $SCRIPT_NAME shell script  at $DATE"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is .... $R FAILURE $N"
        exit 1
    else
        echo -e "$2 is .... $G SUCCESS $N"
    fi        
}

check_user(){
if [ $USERID -ne 0 ]
then
    echo "please run with root user"
    exit 1
else
    echo "you are with root user"
fi
}