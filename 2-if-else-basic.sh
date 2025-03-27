#!/bin/bash

#Display the UID and username of the user
#Display if the user is the root user or not

#Display the UID
echo "Your UID is ${UID}"

#Display username
USERNAME=$(id -un)
echo "Your username is ${USERNAME}"

#Display user is root or not user

if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root user'
else
  echo 'You are not root user'
fi