#! bin/bash

read -p "Enter your name:" name
echo "your name=$name"

#spoecial Variables
# $0-$n , $* / $@, $#
echo Script name= $0
echo First Argument= $1
echo All Arguments=$*
echo Number of Arguments=$#

