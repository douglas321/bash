#!/bin/bash
clear

#define functions BEFORE calling tham --  so, define at the top

function total_files() {
	find $1 -type f | wc --lines
}

function total_directories() {
	find $1 -type d | wc --lines
}

echo "making a tar backup of my BASH directory, press enter to continue"
read -p " "

dateName=$(date +%A)
dayDate=$(date +%d)
month=$(date +%B)
year=$(date +%Y)

echo -e $dateName
echo -e $dayDate
echo -e $month
echo -e $year

cal
echo


#Hostname information
echo -e "\e[31;43m****** Hostname Info *******\e[0m"
hostnamectl
echo " "


#Filesystem disk space useage
echo -e "\e[31;43m****** Filesystem disk space useage *******\e[0m"
df -h
echo " "


#Memory -- free and used
echo -e "\e[31;43m****** Memory -- free and used *******\e[0m"
free -h
echo " "


#System Uptime and Performance Load
echo -e "\e[31;43m****** System Uptime and Performance Load ********\e[0m"
uptime -p
echo " "


#Current User
echo -e "\e[31;43m****** Users Currently Logged in ********\e[0m"
who -u
echo " "


#Why is everything so slow--top 5 prosses
echo -e "\e[31;43m****** Top 5 Prosses ********\e[0m"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 5
echo " "









#folder / dest = destination src = source (don't use 'source' since that is a keyword)
#list all to give options

ls -l | grep ^d
echo "where do you want to backup? (I suggest backups)"
read dest
echo
ls -hl
echo "which folder/file do you want to backup?"
read src

echo "Number of files in $src --"
total_files $src
echo "Number of directories in /home/compsci --"
total_directorie $(/home/compsci) 2> log_errors.txt



if [ -d $dest ]; then
echo -e "\e[31;43mBackup foler exists\e[0m"
else
echo -e "\e[31;43mBackup folder does not exist"
mkdir -p $dest
echo
fi

read -p "press any key to continue" -n1 -s
mkdir -p $dest/"$dateName $dayDate $month $year"
echo

echo -e "\e[31;43mBackup started ...\e[0m"
tar cvfz $dest/"$dateName $dayDate $month $year"/bash_backup.tgz $src
echo

echo -e "\e[31;43mHere is the contents of your backup directory:\e[0m"
cd $dest
ls -ahl &> logEverything.txt

echo
echo -e "\e[31;43mAnd here is what is inside that directory:\e[0m"
cd "$dateName $dayDate $month $year"
ls -ahl
echo
echo -e "\e[31;43mAll done, press [enter] to exit\e[0m"
read -p " "
cd ~
clear

