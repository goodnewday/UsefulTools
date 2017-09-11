if [  $# -eq 0 ]
then
	cat /usr/bin/cmd.txt |awk '{print "-----"  NR " " $0 }' 
	cp /usr/bin/cmd.txt /usr/bin/cmdbk.txt
else
	if [ $1 == "add" ]
	then
		echo $2>>/usr/bin/cmd.txt
	elif [ $1 == "del" ]
	then 
 		cat /usr/bin/cmd.txt |awk '{if(NR!="'$2'") {print $0}}' >/tmp/tmp.txt && cp /tmp/tmp.txt /usr/bin/cmd.txt
	elif [ $1 == "exec" ]
	then
 		cat /usr/bin/cmd.txt |awk '{if(NR=="'$2'") {print $0}}' >/tmp/tmp.sh && chmod +x /tmp/tmp.sh && cat  /tmp/tmp.sh && /tmp/tmp.sh
	elif [ $1 == "show" ]
	then
		outputdst=`tty`
# 		sleep 1&& cat /usr/bin/cmd.txt |awk '{if(NR=="'$2'") {printf $0}}' |xargs > $outputdst &
	fi
fi
