#!/bin/sh

list="1 2 3 4 5 6 7 8 9"

if [ $# -ne 1 ]; then
        echo "type only 1 argument"
elif [ $1 -lt 1 ] || [ $1 -gt 9 ]; then
        echo "the range of argument is 1~9"
else
        for i in $list
        do
                var=`expr $1 \* $i`
                echo "$1 * $i = $var"
        done
fi
