#!/bin/bash -x
#echo "Please provide a number to check prime number: "
#read n
n=17
count=0

#a=$((10 % 2))
#echo ${a}


for ((i=1; i <= $n; i++))
do
    if [[ $count -gt 0 ]]
    then
      echo "Number ${n} is not prime. It is divisible by ${divisible_by}"
      exit 0
    elif [[ ${i} = 1 ]]
    then
      :
    elif [[ ${i} = ${n} ]]
    then
      :
    else
        remainder=$(($n % $i))
        if [[ ${remainder} = 0 ]]
        then
            count=$((count + 1))
            divisible_by=$i
        fi
    fi
done


if [[ ${count} = 0 ]]
then
  echo "Number is prime"
fi
