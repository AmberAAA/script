#!/bin/zsh

name1=Amber
name2=Tim
if [ $1 = $name1 ]
then
	echo "Hi $1, i konw u are Amber, Go Back."
elif [ $1 = $name2 ]
then
    echo "Time"
else
	echo "Wa wu hi $1"
fi
