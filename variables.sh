#!/usr/bin/env bash 

Name=`whoami`
# This is a comment
echo "Hola $Name"

# $0 is the program itself
echo "[$0] [$1] [$2] [$3]"
Fname=$1
Lname=$2
echo "[$0] [$Fname] [$Lname]"

exit 0
