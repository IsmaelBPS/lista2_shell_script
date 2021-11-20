#!/usr/bin/env bash


read -p "4 números com decimal: " -r -a nums
lowest=${nums[0]}
for n in ${nums[@]}; do
    lowest=$(echo "scale=1;if($n < $lowest) $n else $lowest" | bc)
done

echo "O menor é : ${lowest}"