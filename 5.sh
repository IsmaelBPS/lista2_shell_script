#!/usr/bin/env bash

greater_file=""
size=0
while [ -n "${1}" ]; do
    if [ -e "${1}" ]; then 
        current_file_size=$(wc -l < ${1} )
        if [[ ${current_file_size} -gt ${size} ]] ; then  
            greater_file="${1}" 
            size="${current_file_size}"
        fi
    else  
        echo "erro: o arquivo ‘${1}’ não existe"
    fi
    
shift
done

echo -e "\nMaior arquivo é : ${greater_file}"