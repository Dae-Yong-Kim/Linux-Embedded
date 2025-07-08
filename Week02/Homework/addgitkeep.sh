#!/bin/sh

add_gitkeep()
{
	local dirs=`ls -A $1`
	echo "$dirs"

	if [ -z $dirs ]; then
		#echo "1111111111111111"
		touch $1/.gitkeep
	else
		for dir in $dirs
		do
			if [ -d $1/$dir ]; then
				add_gitkeep $1/$dir
			fi
		done
	fi
}

if [ $# -ne 1 ]; then
	echo "type only 1 argument"
elif [ ! -d $1 ]; then
	echo "argument directory is not existed"
else
	add_gitkeep $1
	echo "completed"
fi
