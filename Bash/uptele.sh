#!/bin/bash
#Script to update status on telegram Bios pentest group

while true;								#to make it run non-stop
do
	if [[ "$(date +%H%M%S)" -eq "220000" ]];			#if 10pm then update 
	then
		read -p "Enter work done today: " work
		read -p "Enter the no of hours: " time


		message="Namah Shivaya    Name:Jishnu Prasanth    Workdone:$work                Time:$time hrs     "
		
		#here i have added so much spaces in between to make it print in the next line. Other options did not work as expected
		
		telegram-cli -W server.pub -e "msg  Bi0s_Pentest_Freshers_2020  $message" 	
		
		#passing the public key and message to telegram cli 
	fi
done


