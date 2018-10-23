#!/bin/bash
clear
repeat=0

echo "Here are the 10 largest files"
du -hs * | sort -rh | head -10


echo "which directory would you like to look at"
read direct
cd $direct
du -hs /home/compsci/$direct/* | sort -rh | head -10
echo "would you like to delete a file?"
read delete
if [ $delete = "yes" ]; then
	echo "which file?"
	read fileName
	echo "File has been deleted"
	rm /home/compsci/$direct/$fileName
else
	echo "ight"
fi
