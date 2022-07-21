#!/bin/bash

str=$@
len=${#str}

count=1
	echo -e "**\c"
	while [ $count -le $len ] 
	do
		echo -e "*\c"
		count=$(( count+1))
	done
	echo "**"


	echo "* $str *"

    count=1
	echo -e "**\c"
	while [ $count -le $len ] 
	do
		echo -e "*\c"
		(( count++ ))
	done
	echo "**"
