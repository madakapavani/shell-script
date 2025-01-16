#!/bin/bash

USERID=$(id -u)

VALIDATE () {
    if [ $1 -ne o ]
      then
        echo "$2...FAILURE"
        exit1
      else
        echo "$2...SUCCESS"
    fi        
}

if [ $USERID -ne 0 ]
   then
        echo "ERROR: you must have sudo access to execute this script"
   exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
   then
        dnf install mysql -y
        VALIDATE $? "installing mysql"
        else
            echo "MYSQL is already...INSTALLED"
fi

dnf installed git

if [ $? -ne 0 ]
  then
    dnf install git -y
    VALIDATE $? "installing git"
  else
    echo "git is already...INSTALLED"
fi