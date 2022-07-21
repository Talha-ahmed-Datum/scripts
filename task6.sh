#! /bin/bash

strFlag=0
str=~null
charFlag=0
char=~null


while getopts ":c:s:" opt
do
	case $opt in
	c)
		char=$OPTARG
		charFlag=1
		;;
	s)
		str=$OPTARG
		strFlag=1
		;;
	\?)
		echo "Invalid flag -$OPTARG"; exit 1
		;;
	:)
		echo "-$OPTARG requires an argument"; exit 1
		;;
	esac
done

len=${#str}

if [ charFlag = 1 -a strFlag = 0 ]
then
	echo "$str"
else
    count=1
	echo -e "${char}${char}\c"
	while [ $count -le $len ] 
	do
		echo -e "${char}\c"
		count=$(( count+1))
	done
	echo "${char}${char}"


	echo "${char} $str ${char} "

    count=1
	echo -e "${char}${char}\c"
	while [ $count -le $len ] 
	do
		echo -e "${char}\c"
		(( count++ ))
	done
	echo "${char}${char}"
fi