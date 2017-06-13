if [  $# -eq 0 ]
then
	cat /usr/bin/cmd.txt |awk '{print "-----"  NR " " $0 }' 
	cp /usr/bin/cmd.txt /usr/bin/cmdbk.txt
else
	if [ $1 == "add" ]
	then
		echo $2>>/usr/bin/cmd.txt
	else	
 		cat /usr/bin/cmd.txt |awk '{if(NR=="'$1'") {print $0}}' >/tmp/tmp.sh && chmod +x /tmp/tmp.sh && cat  /tmp/tmp.sh && /tmp/tmp.sh
	fi
fi
