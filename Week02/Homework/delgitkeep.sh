#!/bin/sh

add_gitkeep()
{
	local dirs=`ls -A $1`

	if [ dirs ]; then
		for dir in $dirs
		do
			if [ $dir = ".gitkeep" ]; then
				rm $1/$dir
			fi
			
			if [ -d $1/$dir ]; then
				add_gitkeep $1/$dir
			fi
		done
	fi
}

if [ $# != 1 ]; then
	echo "type only 1 argument"
elif [ ! -d $1 ]; then
	echo "argument directory is not existed"
else
	add_gitkeep $1
	echo "completed"
fi
