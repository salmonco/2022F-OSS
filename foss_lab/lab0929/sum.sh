#!/bin/bash
sum=0
for a in {1..1000000..1}
do
	sum=$(($sum+$a))
done
echo $((sum))
