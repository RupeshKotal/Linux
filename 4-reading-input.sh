#!/bin/bash

#This script will createws an account on the loacl system 
# You will be prompted for the account name and password

#Ask for Username
read -p 'Enter user name to create: '  USER_NAME

#Ask for real name
read -p 'Enter alias: '  COMMENT

#Ask for passowrd
read -p 'Enter user password: '  PASSWORD

#Create User
useradd -c "${COMMENT}" -m ${USER_NAME}

#Set password for the user
echo "${USER_NAME}:${PASSWORD}" | sudo chpasswd
#echo ${PASSWORD}| passwd --stdin ${USER_NAME}

#Force passowrd change on first login
passwd -e ${USER_NAME}
