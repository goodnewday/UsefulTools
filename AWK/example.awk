ͳһ˵����������' '�м䣬����{}��
//�Կո�ֶ�,��ӡ�ڶ�������
cat 1.txt |awk '{print $2;}'

//��ӡ�ļ�����������
awk '{print}' 1.txt

//ִ��awk�ű�
awk -f command.awk marks.txt

//��ӡ�ļ���ָ���У� ��\t�� Ϊtab
awk '{print $3 "\t" $4}' marks.txt


//���ļ��в���ģʽa,���ҵ�������У�$0��������
awk '/a/ {print $0}' marks.txt

//����ƥ����������
awk '/a/{++cnt} END {print "Count = ", cnt}' marks.txt

//�ϲ������ļ�
{if(NR==FNR){a[FNR]=$1; print "--"}else{print $1,a[FNR],FNR,NR}}' 2.txt 3.txt

����2(awk -f merge.awk 1.txt  2.txt 3.txt 4.txt ):
merge.awk����(�˴�ʹ��" "�����ַ���,���ÿո�,�����"\t"���ӿ��Է���ĵ��뵽excel��:   
{a[FNR]=a[FNR]" "$0;} 
END{ 
for (i in a) 
	print a[i]
}

