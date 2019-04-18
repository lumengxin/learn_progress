#########################################################################
# File Name: array.sh
# Author: 
# title: 
# Created Time: 2018年10月16日 星期二 15时55分49秒
#########################################################################
#!/bin/bash

my_array=(a b c d)

echo "数组的元素为：${my_array[*]}"
echo "第一个为：${my_array[0]}"

:<<!
error:array.sh: 9: array.sh: Syntax error: "(" unexpected
slove:sudo dpkg-reconfigure dash   (sh指向了dash)
!
