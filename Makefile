text1:= 1.c 2.c 3.c 4.c
text3:=$(foreach tempValue, $(text1), $(tempValue).cmd)

all:
	echo $(text3)
	
#代表all这个目标是一个伪目标，真实并不存在all这个文件，即使目录下有那么也忽略
#所以如此申明后每次都会执行all目标下的规则
.PHONY:all