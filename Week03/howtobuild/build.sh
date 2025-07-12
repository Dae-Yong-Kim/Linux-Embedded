#!/bin/sh

if [ $# -eq 0 ]; then
	gcc *.c -lm
elif [ $# -eq 1 ]; then
	gcc -o $1 *.c -lm
else
	echo "range of number of arguments is 0~1"
fi
