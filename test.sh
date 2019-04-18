#########################################################################
# File Name: test.sh
# Author: lumengxin
# title: text命令
# Created Time: 2018年10月16日 星期二 17时46分49秒
#########################################################################
#!/bin/bash

#test命令：检查条件是否成立，数值 字符 文件
#1.数值测试
num1=100
num2=34
if test $[num1] -eq $[num2]
then
	echo '两数相等'
else
	echo '两数不相等'
fi

#[]执行基本运算
a=2
b=4
result=$[a+b]  #无空格
echo "result = $result"

#2.字符串测试
s1='xiao'
s2='xin'
if test $num1 = $num2
then
	echo '相等'
else 
	echo '不相等'
fi

#3.文件测试
cd /bin
if test -e ./notFile -o -e ./bash
then
	echo '至少有一个文件'
else
	echo '两个文件都不存在'
fi

:<<!
-e 文件名	如果文件存在则为真
-r 文件名	如果文件存在且可读则为真
-w 文件名	如果文件存在且可写则为真
-x 文件名	如果文件存在且可执行则为真
-s 文件名	如果文件存在且至少有一个字符则为真
-d 文件名	如果文件存在且为目录则为真
-f 文件名	如果文件存在且为普通文件则为真
-c 文件名	如果文件存在且为字符型特殊文件则为真
-b 文件名	如果文件存在且为块特殊文件则为真
!

