if [  $# -eq 0 ]
then
	cat /usr/bin/cmd.txt |awk '{print "-----"  NR " " $0 }' 
else
 	cat /usr/bin/cmd.txt |awk '{if(NR=="'$1'") {print $0}}' >tmp.sh && chmod +x tmp.sh && cat  tmp.sh && ./tmp.sh
fi
