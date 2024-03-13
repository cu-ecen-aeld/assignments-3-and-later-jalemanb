#!/usr/bin/env bash

writefile=$1
writestr=$2


if [ $# -lt 2 ]; then
	echo "Failed expected two arguments"
	exit 1
fi

touch ${writefile} && echo "${writestr}" > ${writefile}

if [ ! -f "${writefile}" ]; then
	echo "Failed to create File"
	exit 1	
fi
