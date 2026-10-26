#!/bin/bash

is_hex(){
	[[ "$1" =~ ^(0[xX])?[[:xdigit:]]+$ ]]
}

total=0

if [ $# -eq 0 ]; then
	echo "Usage: <value1> <valueN>"
	exit 1
fi

for arg; do
	if is_hex $arg; then
		if [[ ! "$arg" =~ ^0[xX] ]]; then
			arg="0x$arg"
		fi
	
		total=$((total + arg))
	else
		echo "Invalid hex value: $arg"
	fi
done

printf "Total: 0x%X\n" "$total"	
