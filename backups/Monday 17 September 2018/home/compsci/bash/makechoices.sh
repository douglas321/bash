#!/bin/bash

clear
#####################################################
#created by Carter Sperry/sept.11 2018
#Practice in conditionals and loops
#####################################################



choice=4


echo "1. update"
echo "2. upgrade"
echo "3. autoclean"
echo "4. autoremove"
echo "5. exit"

while [[ $choice -gt 0 ]] && [[ $choice -lt 5 ]]; do

echo "please enter a choice 1-5"

read choice

if [[ $choice -eq 1 ]]; then
echo "You want to do an update"
#sudo apt update
else
	if [[ $choice -eq 2 ]]; then
	echo "You want to do an upgrade"
	#sudo apt upgrade
	else
		if [[ $choice -eq 3 ]]; then
		echo "You want to do an autoclean"
		#sudo apt auto clean
		else

			if [[ $choice -eq 4 ]]; then
			echo "You want to do an autoremove"
			#audo apt auto clean
			else

				if [[ $choice -eq 5 ]]; then
				echo "exiting program"
				fi
			fi
		fi
	fi
fi
done
