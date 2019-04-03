pattern:=,
relpacement:=.
text:=ganye,is,best

patsubstPattern:=%.c
patsubstRelpacement:=%.o
patsubstText:=ganye.c is.c best.c

substStr:=$(subst $(pattern), $(relpacement), $(text))
patsubstStr:=$(patsubst $(patsubstPattern), $(patsubstRelpacement), $(patsubstText))
all:
	echo $(substStr)
	echo $(patsubstStr)
#代表all这个目标是一个伪目标，真实并不存在all这个文件，即使目录下有那么也忽略
#所以如此申明后每次都会执行all目标下的规则
.PHONY:all