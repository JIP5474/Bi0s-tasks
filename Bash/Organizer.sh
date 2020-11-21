#!/bin/bash
#Script to organize downloads folder

user=$(whoami)
folder=/home/$user/Downloads/"$(date +%Y)"

if [[ ! -d "$folder" ]];then
	mkdir $folder
fi

cd $folder
dt="$(date --date="yesterday" +%b-%d)"
mkdir $dt

find /home/$user/Downloads -maxdepth 1 -mtime -1 -mmin +1|sed '1d'|
while read -r line
do
	mv $line /home/$user/Downloads/"$(date +%Y)"/$dt

done
rmdir $dt 2>/dev/null #to delete folder if empty

#Here I am finding files modified between last one day and before a minute so that mv command does not try to move the folder created right now
