#########################################################################
# File Name: operation.sh
# Author: 
# title: 
# Created Time: 2018年10月16日 星期二 16时10分53秒
#########################################################################
#!/bin/bash

#算术运算符:反引号，有空格
sum=`expr 3 + 5`
echo "两数之和为：$sum"

a=10
b=20

val=`expr $a \* $b`
echo "a * b : $val"

if [ $a == $b ]
then
	echo 'a等于b'
fi
if [ $a != $b ]
then
	echo 'a不等于b'
fi

#关系运算符：-eq == ,-ne !=,-gt >,-lt <,-ge >=,-le <=
x=4
y=2
if [ $a -eq $b ]
then
	echo "$a -eq $b : a等于b"
else
	echo "$a -eq $b : a不等于b"
fi
if [ $a -le $b ]
then
	echo "$a -le $b : a小于或等于b"
else
	echo "$a -le $b : a大于b"
fi

#布尔运算符：！非， -o 或, -a 与

#逻辑运算符：&& AND， || OR

#字符串运算符：=, !=, -z 0 true, -n !0 true, str 非空 true
m='abc'
n='efg'
if [ $a != $b ]
then
	echo " $a != $b : a不等于b "
else
	echo " $a != $b : a等于b "
fi
if [ -n "$a" ] 
then
	echo " -n $a : 字符串长度不为0 "
else
	echo " -n $a : 字符串长度为0 "
fi

#文件测试运算符：
file="/home/xiaoxin/shell/hello.sh"
if [ -r $file ]
then
	echo "文件可读"
else
	echo "文件不可读"
fi
if [ -w $file ]
then
   echo "文件可写"
else
   echo "文件不可写"
fi
if [ -x $file ]
then
   echo "文件可执行"
else
   echo "文件不可执行"
fi
if [ -f $file ]
then
   echo "文件为普通文件"
else
   echo "文件为特殊文件"
fi
if [ -d $file ]
then
   echo "文件是个目录"
else
   echo "文件不是个目录"
fi
if [ -s $file ]
then
   echo "文件不为空"
else
   echo "文件为空"
fi
if [ -e $file ]
then
   echo "文件存在"
else
   echo "文件不存在"
fi
