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
}

#Main Program

Print_Message Devops
#above line command which is excute the fucntion and will given inputs from here
##Note: Function declare first and call then you call function later