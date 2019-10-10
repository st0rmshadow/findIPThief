#!/bin/bash
echo "findIPThief is running"
# Default variables Default gateway variables
DEBUG_IT=0;
GatewayIP="$1"
RealGatewayMac="$2"
# print syntax if command not entered correctly
while [ -z $GatewayIP ]
do
	echo "No GatewayIP specified"
	echo "Command syntax ./findIPTheif GatewayIPAddress RealGatewayMaCXX:XX:XX:XX:XX:XX"
	exit
done

# start the test
while :
do
	#Get the current mac and clean up the line output
	CurrentGatewayMac=$(arp -a | grep $GatewayIP | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}')

echo "Current Gateway Mac $CurrentGatewayMac"
if [ $CurrentGatewayMac == $RealGatewayMac ]
then 
	break
else
	# Need to ssh and block CurrentGatwayMAC in WLC


	# need to email IT with the details

fi
	#

# wait 5 seconds before test again
sleep 5
done
