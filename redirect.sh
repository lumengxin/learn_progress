#########################################################################
# File Name: redirect.sh
# Author:lumengxin 
# title: redirect
# Created Time: 2018年10月16日 星期二 20时59分26秒
#########################################################################
#!/bin/bash

#重定向：一般终端接受输入，产生的输出也到终端。重定向可输出到指定地方
#command > file	将输出重定向到 file。
#command < file	将输入重定向到 file。
#command >> file	将输出以追加的方式重定向到 file。
#n > file	将文件描述符为 n 的文件重定向到 file。
#n >> file	将文件描述符为 n 的文件以追加的方式重定向到 file。
#n >& m	将输出文件 m 和 n 合并。
#n <& m	将输入文件 m 和 n 合并。
#<< tag	将开始标记 tag 和结束标记 tag 之间的内容作为输入。
#以存在内容会被覆盖掉。>> 将内容添加到文件末尾。

:<<!
#1.输出重定向：
$ echo "www.lumengxin.com" > users
$ cat users
www.lumengxin.com

#2.输入从定向：
$ wc -1 < users
     2

#3.重定向深入讲解
一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：

标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。
默认情况下，command > file 将 stdout 重定向到 file，command < file 将stdin 重定向到 file。
如果希望stderr指向file:
$ command 2 > file

#4.Here Document:将输入从定向到一个交互式shell脚本或程序
command << delimiter
	document
delimiter

#5./dev/null文件：执行命令，结果不显示在屏幕
$ command > /dev/null
!

