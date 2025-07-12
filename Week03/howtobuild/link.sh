#!/bin/sh

# wrong

#1
# ld *.o

# "cannot find entry symbol" Error ==> not defined C runtime object file
# "undefined reference to" Error ==> can not find library (included libc)

#2
# ld *.o -/usr/lib/x86_64-linux-gnu/crt1.o -lc -lm

# "No such file or directory" Error ==> Dependency file's path is wrong

#succesful

if [ $# -eq 0 ]; then
	ld *.o /usr/lib/x86_64-linux-gnu/crt1.o -lc -lm -dynamic-linker=/lib64/ld-linux-x86-64.so.2
elif [ $# -eq 1 ]; then
	ld -o $1 *.o /usr/lib/x86_64-linux-gnu/crt1.o -lc -lm -dynamic-linker=/lib64/ld-linux-x86-64.so.2
else
	echo "range of number of arguments is 0~1"
fi
