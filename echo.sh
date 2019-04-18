#########################################################################
# File Name: echo.sh
# Author: 
# title: 
# Created Time: 2018年10月16日 星期二 16时52分12秒
#########################################################################
#!/bin/bash

#1.显示普通字符串：
echo 'it is a normally string'
echo it is a ordinary string

#2.显示转义字符
echo "\"it is a string\""

#3.显示变量：read命令 读取一行并指定给shell变量
read name
echo "$name It is a read"

OK #标准输入
OK It is a read #输出

#4.显示换行
echo -e "OK. \n"  #-e 开启转义 \c 不换行
echo "it is a test"

#5.显示结果定向至文件
echo "it is turn to myfile" > shell

#6.原样输出，不转义或取变量(单引号)
echo '$name\"'

#7.显示执行命令的结果
echo `date`
