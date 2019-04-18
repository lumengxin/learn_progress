#########################################################################
# File Name: printf.sh
# Author: 
# title: 
# Created Time: 2018年10月16日 星期二 17时16分38秒
#########################################################################
#!/bin/bash

#1.格式化字符串
printf "hello,printf\n"
printf %s ab\n
printf "\n"

#2.制定字符串宽度，对齐方式
printf "%-10s %-8s %-4s\n" 姓名 姓名 体重kg   
printf "%-10s %-8s %-4.2f\n" 张三 男 56.43578
printf "%-10s %-8s %-4.2f\n" 王五 女 67
printf "%-10s %-8s %-4.2f\n" 小九 男 46.34

#3.转义序列
printf "a string, no processing:<%s>\n" "A\nB"
printf "a string, no processing:<%b>\n" "A\nB"

:<<EOF
\a	警告字符，通常为ASCII的BEL字符
\b	后退
\c	抑制（不显示）输出结果中任何结尾的换行字符（只在%b格式指示符控制下的参数字符串中有效），而且，任何留在参数里的字符、任何接下来的参数以及任何留在格式字符串中的字符，都被忽略
\f	换页（formfeed）
\n	换行
\r	回车（Carriage return）
\t	水平制表符
\v	垂直制表符
\\	一个字面上的反斜杠字符
\ddd	表示1到3位数八进制值的字符。仅在格式字符串中有效
\0ddd	表示1到3位的八进制值字符
EOF
