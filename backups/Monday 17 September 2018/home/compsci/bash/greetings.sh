#!/bin/bash
clear
echo welcome to my [] experiment program
echo
echo -n "hello, what is your first name?"
read firstname
echo -n "Thank you $firstname, and what is you surname?"
read surname
echo "so nice to meet you $firstname $surname"
echo
if [[ "$firstname" == "carter" ]] & [[ "$surname" == "sperry" ]]
then echo "waz up broseph"
else echo "OK $firstname $surname is now using my program"
fi
