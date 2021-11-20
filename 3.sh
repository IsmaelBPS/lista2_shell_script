#!/usr/bin/env bash
read -p "Digite dois números: " -r -a nums
lowest_num=${nums[0]}
highest_num=${nums[0]}
for n in "${nums[@]}"; do
    if [ "${n}" -gt "${highest_num}" ]; then
        highest_num=${n}
    elif [ "${n}" -lt "${lowest_num}" ]; then
        lowest_num=${n}
    fi
done

echo "Menor : ${lowest_num}"
echo "Maior : ${highest_num}"