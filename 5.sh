#!/usr/bin/env bash

read -p "Digite 4 noms de arquivos para saber o maior: " -r -a files

greater_file=""
size=0

for f in "${files[@]}";do
    if [ -e "${f}" ]; then 
        current_file_size=$(wc -l < ${f} )
        if [[ ${current_file_size} -gt ${size} ]] ; then  
            greater_file="${f}" 
            size="${current_file_size}"
        fi
    else  
        echo "erro: o arquivo ‘${f}’ não existe"
        exit 2
    fi
done

echo -e "\nMaior arquivo é : ${greater_file}"