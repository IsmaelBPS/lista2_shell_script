#!/usr/bin/env bash

read -p "Digite dois números para fazer a soma de todos entre eles : " -r -a nums

initial_num=$((${nums[0]}+1))
final_num=$((${nums[1]}-1))

total_sum=0
while [ $initial_num -le $final_num ];do
    total_sum=$((total_sum+initial_num))
    initial_num=$((initial_num+1))

done

echo "A soma entre todos é : ${total_sum}"