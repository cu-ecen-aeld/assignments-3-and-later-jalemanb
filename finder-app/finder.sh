#!/usr/bin/env bash

path=$1
text=$2


if [ $# -lt 2 ]; then
	echo "Failed expected two arguments"
	exit 1
fi

if [ ! -d ${path} ]; then
	echo "Specified Directory Doesn't exist"
	exit 1
fi

X=$(find ${path} -type f | wc -l) 

Y=$(find ${path} -type f -exec cat {} \; | grep ${text} | wc -l)

echo "The number of files are ${X} and the number of matching lines are ${Y}"
