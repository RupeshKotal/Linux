#!/bin/bash

#Display the UID
echo "Your Uid is ${UID}"

#Only Display if UID dosent matches 1000
UID_TEST_FOR='1000'

if [[ "${UID}" -ne "${UID_TEST_FOR}" ]]
then
  echo "Your UID doest not match"
  exit 1
fi

#Display usernmae

USER_NAME-$(id -un)

#Test if command successd

if [[ "${?}" -ne 0 ]]
then
  echo 'The id command is not excecuted scuccefully'
  exit 1
fi
echo "Your username is ${USER}"

#You can use a string test conditiom

USER_NAME_TO_TEST_FOR='vagrant'
if [[ "${USER_NAME_TO_TEST}" = "${USER}" ]]
then
  echo "Your user name matches ${USER_NAME_TO_TEST}"
fi


#Test for !=

