#!/bin/bash
#This script will genrate some random password
#
# A random number as password
#
Password="${RANDOM}${RANDOM}${RANDOM}"
echo "${Password}"

#Use current date and time as the basis for the password %s (Epoch time) %N (Nanosceond)  seacrh on man date /Format
Password=$(date +%s%N)
echo "${Password}"

#Better password optio
Password=$(date +%s%N | sha256sum | head -c30)
echo "${Password}"

#Even Better password

Password=$(date +%s%N${RANDOM} | sha256sum | head -c48)


echo "Password is : ${Password}"

#Append special char

Special_char=$(echo '!@#$%^*_+'| fold -w1 | shuf | head -c1)

echo "Password is : ${Password}${Special_char}"

-