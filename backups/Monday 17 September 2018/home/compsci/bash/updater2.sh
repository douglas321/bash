#!/bin/bash
#((  ))-math [[  ]]-strings if...fi case.....esac

clear
echo Welcome to my second BASH script $1 $2
name=$1
period=$2
echo -p "Hello there $name from period $period"
echo what is your name?
read name

echo #line break
read -p "Hello there $name nice to meet you, today is $(date '+%A %Y-%m-%d %H:%M:%S'). press [enter] to continue"


x=7
y=9
echo
echo x = $x,y = $y
