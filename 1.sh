#!/bin/bash

# problem computes different arithmetic expressions and Sorts the results

read -p "enter three inputs " a b c
cnt=0
numbers[((cnt++))]=$(($a+$b*$c))
numbers[((cnt++))]=$(($a*$b+$c))
numbers[((cnt++))]=$(($c+$a/$b))
numbers[((cnt++))]=$(($a%$b+$c))

echo ${!numbers[@]}
echo ${numbers[@]}

for (( i=0 ; i < ${#numbers[@]}; i++ ))
do
	for (( j=0 ; j < ${#numbers[@]}; j++ ))
    	do
      		if [[ ${numbers[$j]} -lt  ${numbers[$i]} ]]
      		then
        		tmp=${numbers[$i]}
        		numbers[$i]=${numbers[$j]}
        		numbers[$j]=${tmp}
      		fi

		if [[ ${numbers[$j]} -gt  ${numbers[$i]} ]]
      		then
        		tmp=${numbers[$i]}
        		numbers[$i]=${numbers[$j]}
        		numbers[$j]=${tmp}
		fi
    	done
done
for m in "${numbers[@]}"
do
	echo "$m"
done

for n in "${numbers[@]}"
do
    echo "$n"
done
