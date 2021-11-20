#!/usr/bin/env bash

message=true

while [ -n "${1}" ];do
    if [ -e "${1}" ];then echo "${1} SIM"; else echo "${1} NAO" && message=false; fi
    shift
done

[ "$message" = true ] && echo -e "Se chutar essa questão eu caio. \n-Saci"