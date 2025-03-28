#!/bin/bash

#This script will createws an account on the loacl system 
# You will be prompted for the account name and password

if [[ "${UID}" -ne 0 ]]
then
  echo "Please run with sudo or as root user"
  exit 1
fi

#Ask for Username
read -p 'Enter user name to create: '  USER_NAME

#Ask for real name
read -p 'Enter alias: '  COMMENT

#Ask for passowrd
read -p 'Enter user password: '  PASSWORD

#Create User
useradd -c "${COMMENT}" -m ${USER_NAME}

#Check to see if the useradd command succeced
#we dont want to tell the user that and account was created that hasnt been

if [[ "${?}" -ne 0 ]]
then 
 echo "accont cannot be created"
 exit 1
fi 

#Set password for the user
echo "${USER_NAME}:${PASSWORD}" | chpasswd
#echo ${PASSWORD}| passwd --stdin ${USER_NAME}


if [[ "${?}" -ne 0 ]]
then 
 echo "accont cannot be created"
 exit 1
fi 


#Force passowrd change on first login
passwd -e ${USER_NAME}


#Display user and passwod

echo "Username: ${USER_NAME}"
echo "Password:  ${PASSWORD}"
echo "Hostname: ${HOSTNAME}"
exit 0