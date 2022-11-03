#!/bin/bash
function fn()
{
	echo "Jisu Bong"
	echo "cmd:" $0 "num:" $# "Arg1:" $1 "Arg2:" $2 "Arg3:" $3
}

function fadd()
{
	echo ${NAME:-"NOT_DEFINED"}
	echo $(($1+$2))
	return $(($#-2))
}
