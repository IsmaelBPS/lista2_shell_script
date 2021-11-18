#!/usr/bin/env bash
maior=0
while [ -n "$1" ];do
    if [ -z "${menor}" ];then
        menor=$1
    fi
    if [ $1 -lt $menor ];then
        menor=$1
    fi
    if [ $1 -gt $maior ];then
        maior=$1
    fi
    shift
done

echo "Menor : ${menor}"
echo "Maior : ${maior}"