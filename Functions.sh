#!/usr/bin/env bash

#function_name{
#command
#command
#}

#function_name

#Declare a function

Print_Message(){
  echo Hello,
  echo Good Morning,
  echo welcome to ${1} training
  echo First Argument in Function =$1
  a=20
  echo value of a is =${a}
  b=50
}
STAT(){
  echo hello
  return 1
  echo Bye
}

#Main Program
a=10
Print_Message Devops
echo Value of b is =${b}
echo First Argument in Main Function is =$1
STAT
echo exit status of function STAt=$?
#From the command line im passing input for  above command as AWS that will be print
#above line command which is excute the fucntion and will given inputs from here
# Function will have own set of variables like $1,$2
##Note: Function declare first and call then you call function later
#Function is command and Function has exit status as well