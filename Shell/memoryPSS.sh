ps -ef |awk '{s = $2 + " "; for(i=7; i <= NF; i++){ s = s" "$i; }; print s }' >/tmp/1.txt
#ps -ef |awk '{print $2}' >/tmp/1.txt

while read line
do
pid=`echo $line |awk 'END{print $1}'`
#echo "pid" $pid
if [  -f "/proc/$pid/smaps" ]
then
cat /proc/$pid/smaps |grep -w Pss |awk -v info="$line" 'BEGIN{n=0}{n = n+$2; } END{ printf ("%-10s %s\n",n,info)}'
fi
done < /tmp/1.txt
