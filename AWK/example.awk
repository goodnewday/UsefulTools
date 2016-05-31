统一说明，命令在' '中间，且在{}中
//以空格分段,打印第二个变量
cat 1.txt |awk '{print $2;}'

//打印文件中所有内容
awk '{print}' 1.txt

//执行awk脚本
awk -f command.awk marks.txt

//打印文件中指令列， “\t” 为tab
awk '{print $3 "\t" $4}' marks.txt


//从文件中查找模式a,查找到输出整行，$0代表整行
awk '/a/ {print $0}' marks.txt

//计算匹配次数并输出
awk '/a/{++cnt} END {print "Count = ", cnt}' marks.txt

//合并两个文件
{if(NR==FNR){a[FNR]=$1; print "--"}else{print $1,a[FNR],FNR,NR}}' 2.txt 3.txt

方法2(awk -f merge.awk 1.txt  2.txt 3.txt 4.txt ):
merge.awk代码(此处使用" "连接字符串,可用空格,如果用"\t"连接可以方便的导入到excel中:   
{a[FNR]=a[FNR]" "$0;} 
END{ 
for (i in a) 
	print a[i]
}

//重定向
print "" >"result.txt"


//设置分割符
awk -F '.' '{print $1}' 1.txt
