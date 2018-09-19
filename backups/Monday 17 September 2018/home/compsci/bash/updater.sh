#!/bin/bash
clear
echo Hello, welcome to my BASH updater script. Would you like to update?[y/n]
read update
if [[ "$update" == "y" ]] || [[ "$update" == "Y" ]] || [[ "$update" == "yes" ]] || [[ "$update" == "Yes" ]] || [[ "$update" == "YES" ]] || [[ "$update" == "yEs" ]] || [[ "$update" == "YeS" ]] || [[ "$update" == "yeS" ]]
then sudo apt update
else echo "Alrighty"
fi


echo Upgrade?[y/n]
read upgrade
if [[ "$upgrade" == "y" ]] || [[ "$upgrade" == "Y" ]] || [[ "$upgrade" == "yes" ]] || [[ "$upgrade" == "Yes" ]] || [[ "$upgrade" == "YES" ]] || [[ "$upgrade" == "yEs" ]] || [[ "$upgrade" == "YeS" ]] || [[ "$upgrade" == "yeS" ]]
then sudo apt upgrade
else echo "Alrighty"
fi


echo autoclean?[y/n]
read autoclean
if [[ "$autoclean" == "y" ]] || [[ "$autoclean" == "Y" ]] || [[ "$autoclean" == "yes" ]] || [[ "$autoclean" == "Yes" ]] || [[ "$autoclean" == "YES" ]] || [[ "$autoclean" == "yEs" ]] || [[ "$autoclean" == "YeS" ]] || [[ "$autoclean" == "yeS" ]]
then sudo apt autoclean
else echo "Alrighty"
fi


echo autoremove?[y/n]
read autoremove
if [[ "$autoremove" == "y" ]] || [[ "$autoremove" == "Y" ]] || [[ "$autoremove" == "yes" ]] || [[ "$autoremove" == "Yes" ]] || [[ "$autoremove" == "YES" ]] || [[ "$autoremove" == "yEs" ]] || [[ "$autoremove" == "YeS" ]] || [[ "$autoremove" == "yeS" ]]
then sudo apt autoremove
else echo "Alrighty"
fi
