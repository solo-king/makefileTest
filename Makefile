text1:= ganye is best!!
findText:=ga
text3:=$(findstring $(findText), $(text1))


all:
	echo $(text3)
	
#代表all这个目标是一个伪目标，真实并不存在all这个文件，即使目录下有那么也忽略
#所以如此申明后每次都会执行all目标下的规则
.PHONY:all