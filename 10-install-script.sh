#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
   then
        echo "ERROR: you must have sudo access to execute this script"
   exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
   then
        dnf install mysql -y
        if [ $? -ne 0 ]
        then
            echo "installing MYSQL...FAILURE"
         exit 1
         else
            echo "installing MYSQL...SUCCESS"
         fi
   else
        echo "MYSQL is already...INSTALLED"
fi

dnf installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "installing git...FAILURE"
        exit1
    else
        echo "installing git...SUCCESS"
    fi
else
    echo "git is already..."INSTALLED"
fi
                