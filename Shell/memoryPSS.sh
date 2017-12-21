#!/bin/bash
ps -ef |awk '{print $2}' >/tmp/1.txt
while read line
do
#echo $line
if [  -f "/proc/$line/smaps" ]
then
cat /proc/$line/smaps |grep -w Pss |awk 'BEGIN{n=0}{n = n+$2} END{print "'$line'", n}'
fi
done < /tmp/1.txt
