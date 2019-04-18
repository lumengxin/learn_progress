#########################################################################
# File Name: contral.sh
# Author:lumengxin 
# title:process control
# Created Time: 2018年10月16日 星期二 18时01分05秒
#########################################################################
#!/bin/bash

#sh中流程控制不可为空，else必须写完

#1.if else
a=3
b=4
if [ $a == $b ]
then
	echo "a等于b"
elif [ $a -gt $b ]
then
	echo "a大于b"
elif [ $a -lt $b ]
then
	echo "a小于b"
else
	echo "没有符合的条件"
fi


num1=$[2*3]
num2=$[3+2]
if test $[num1] -eq $[num2]
then
	echo '两数相等'
else
	echo '两数不相等'
fi

printf [-------------------------]'\n'

#2.for循环
for loop in 1 2 3 4 5
do
	echo "the value is: ${loop}"
done


printf [-------------------------]'\n'

#3.while
int=1
while(($int<=5))
do
	echo $int
	let "int++"
done

#读取键盘信息
echo '按下<CTRL-D> 退出'
echo -n '输入你喜欢的网站：'
while read FILM
do
	echo "$FILM是我喜欢的网站"
done

printf [-------------------------]'\n'

#4.until循环：直到为true时停止，与while处理方式相反
l=0

until [ ! $a -lt 10 ]
do
	echo $a
	a=`expr $a + 1`
done

printf [-------------------------]'\n'

#5.case:多选择语句。与c family差别很大，需要esac结束
echo '输入0-4之间的数字：'
echo '你选择的数字为：'
read aNum
case $aNum in
	1) echo '你选择了 1'
	;;
    2) echo '你选择了 2'
	;;
    3) echo '你选择了 3'
	;;
    4) echo '你选择了 4'
	;;
    *) echo '你没有输入正确数字'
    ;;
esac

printf [-------------------------]'\n'

#6.break
while :
do
	echo -n "输入1-5之间的数字:"
	read aNum
	case $aNum in
		1|2|3|4|5) echo "你输入的数字为 $aNum"
			;;
		*) echo "你输入的数字不是1-5之间的，游戏结束"
			break
			;;
	esac
done

printf [-------------------------]'\n'

#7.continue
while :
do
	echo -n "输入1-5之间的数字:"
	read aNum
	case $aNum in
		1|2|3|4|5) echo "你输入的数字为 $aNum"
			;;
		*) echo "你输入的数字不是1-5之间的"
			continue
			echo "游戏结束"
			;;
	esac
done

