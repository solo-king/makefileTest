text1:= ganye 
text2:= ganye2
test3:=$(strip $(text1))
test4:=$(strip $(text2))

all:
	echo $(test1)$(test2)
	echo $(test3)$(test4)
	
#代表all这个目标是一个伪目标，真实并不存在all这个文件，即使目录下有那么也忽略
#所以如此申明后每次都会执行all目标下的规则
.PHONY:all