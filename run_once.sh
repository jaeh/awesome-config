#!/bin/bash

if test $# = 1 
then
	killall -0 $1
	if [ $? != 0 ]
	then
		exec "$1"
	fi
fi
