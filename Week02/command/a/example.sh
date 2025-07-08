#!/bin/sh

list="1 2 3 4 5"

for var in $list
do
	echo var is $var
done

filelist=`ls`

for file in $filelist
do
	echo $file !
done
