#!/bin/bash

read -p "Enter value of i :" i

if [ $i -eq 5 ]
then
    echo "Value of i is 5"
elif [ $i -eq 10 ]
then
    echo "Value of i is 10"
else
    echo "Value of i is not equal to 5 or 10"
fi
