#!/usr/bin/env bash

# de 0 a 108

# current_1=0

# while [ "${current_1}" -lt 108 ];do
#     [ $((current_1%2)) -eq 1 ] && echo "${current_1}"
#     current_1=$((current_1+1))
# done


## de A a B

current_2=$1
while [ "${current_2}" -lt "${2}" ];do
    [ $((current_2%2)) -eq 1 ] && echo "${current_2}"
    current_2=$((current_2+1))
done