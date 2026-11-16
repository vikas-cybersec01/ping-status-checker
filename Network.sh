#!/bin/bash
echo "Domian- $1"
echo "pinging $1 ........................... loading "
ping -c 5 $1 >result.txt 
sleep 2
 
if [ -z "$1" ]; then
echo "Usage: ./network.sh"
echo "Correct syntax - ./network.sh <domain-name>"
echo "Status: offline❌"
exit 
else
cat result.txt | grep "packets transmitted" |cut -d "," -f  1,2,3| tr -d  ":"
echo "Status: online✅"
fi
received=$(grep "received" result.txt| awk '{print $1}')
sent=$(grep "5 packets transmitted" result.txt | awk '{print $4}')
[ -z "$sent" ] && echo "Status: DEAD ❌" && exit
loss=$((100 - (received * 100 / sent)))
   
 
if [ "$loss" -gt 0 ]; then
echo "Status: UNSTABLE ⚠️ instead"
elif [ "$loss" -eq 100 ] ; then 
echo "Status: DEAD❌" 
else 
echo "Status: Good"
fi 
  
