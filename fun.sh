#!/bin/zsh

name1=Amber
name2=Tim
if [[ $1 = "Amber" ]] then
	echo "Hi $1, i konw u are Amber, Go Back."
elif [[ $1 = "Tim" ]] then
    echo "Tim"
else
	echo "Wa wu hi $1"
fi
