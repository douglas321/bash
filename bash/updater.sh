#!/bin/bash
clear
echo Hello, welcome to my BASH updater script. Would you like to update
read update
sudo apt update
sudo apt upgrade -y
sudo apt autoclean
sudo apt autoremove
