SOURCES:=1.c 2.c 3.c
#此处的include后，相当于c语言中的include<xxx.h>
#将会成为调用include的makefile的一部分
include myfunc.mk
all:
	echo $(SOURCES)
#代表all这个目标是一个伪目标，真实并不存在all这个文件，即使目录下有那么也忽略
#所以如此申明后每次都会执行all目标下的规则
.PHONY:all