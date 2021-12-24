#!/bin/bash

if [[ $1 == '--help' ]]
then
	echo "To Use 'cls <directory>' instead of using 'source <path-to-cls> <path-to-directory>';"
	echo "-Edit '.bashrc' by adding  \"alias cls='source <path>/cls'\" which is a hidden file in '~/' by default"; echo
	echo "To change directory: 'source <path-to-cls> <path-to-directory>' (Also runs ls)."
	echo "NOTE: You can use '.' or '..' too."
	echo
	echo "To ls the current directory: 'cls'."
	echo "NOTE: Just to ls, can't take any flags like -la."; echo
	echo "And here is the usage of the 'cd' command;"; echo
fi

if [[ $1 != "" ]]
then
	if cd $1
	then
		ls
	else
		echo "Directory '$1' doesn't exist"
	fi 2>/dev/null
else
	ls
fi
