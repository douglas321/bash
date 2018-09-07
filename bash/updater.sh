#!/bin/bash
clear
echo Hello, welcome to my BASH updater script. Would you like to update?[y/n]
read update
if [[ "$update" == "y" ]]
then sudo apt update
else echo "Alrighty"
fi

echo Upgrade?[y/n]
read upgrade
if [[ "$upgrade" == "y" ]]
then sudo apt upgrade
else echo "Alrighty"
fi

echo autoclean?[y/n]
read autoclean
if [[ "$autoclean" == "y" ]]
then sudo apt autoclean
else echo "Alrighty"
fi


echo autoremove?[y/n]
read autoremove
if [[ "$autoremove" == "y" ]]
then sudo apt autoremove
else echo "Alrighty"
fi
