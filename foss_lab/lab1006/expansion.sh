FOO="Jisu Bong"
STR="/home/course/foss/oss119/aaa.c"
echo $FOO
echo ${FOO:0:3}
echo ${FOO:(-5):3} # 괄호 중요!
echo ${STR/%.c/.java}
