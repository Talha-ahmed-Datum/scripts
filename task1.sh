#! /bin/bash

if [ $# == 2 ]
then
	find $1 $2
elif [ $# == 1 ] 
then
	find $1 .
else	
	echo "invalid input at least 1 argument is required"
fi
