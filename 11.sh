#!/usr/bin/env bash

logic="
Logica:

    test ( expressão ) -> retorna True se a expressão é verdadeira
    test ! expressão -> retorna True se a expressão é falsa
    test expressao1 -a expressão 2 -> retorna True se ambas as expressões forem verdadeiras
    test expressao1 -o expressão 2 -> retorna True se pelo menos uma das expressões for verdadeira

"

arithmetic="
Aritmetica

    sempre seguindo a lógica de inteiro1 e inteiro2
    test inteiro1 -eq inteiro2 -> retorna True se os inteiros são iguais
    test inteiro1 -ne inteiro2 -> retorna True se os inteiros são diferentes
    test inteiro1 -gt inteiro2 -> retorna True se inteiro1 é maior que inteiro2
    test inteiro1 -ge inteiro2 -> retorna True se inteiro1 é maior ou igual a inteiro2
    test inteiro1 -lt inteiro2 -> retorna True se inteiro1 é menor que inteiro2
    test inteiro1 -le inteiro2 -> retorna True se inteiro1 é menor ou igual a inteiro2

"   

strings="
Strings: 

    test -n str -> retorna True se a string não é vazia
    test -z str -> retorna True se a string é vazio
    test str1 = str2 -> retorna True se as strings são iguais
    test str1 != str2 -> retorna True se as strings são diferentes

"


files="
Arquivos : 

    test -b file -> retorna True se o arquivo é um bloco de dados especial
    test -c file -> retorna True se o arquivo é um caractere especial
    test -d file -> retorna True se o arquivo é um diretório
    test -e file -> retorna True se o arquivo existe
    test -f file -> retorna True se o arquivo é um arquivo normal
    test -L file -> retorna True se o arquivo é um link simbólico
    test -k file -> retorna True se o arquivo é um sticky bit
    test -h file -> retorna True se o arquivo é um link simbólico
    test -O file -> retorna True se o dono do arquivo é o usuário atual
    test -r file -> retorna True se o arquivo pode ser lido
    test -w file -> retorna True se o arquivo pode ser escrito
    test -x file -> retorna True se o arquivo pode ser executado 
    test -s file -> retorna True se o tamanho do arquivo é maior que zero
    test -N file -> retorna True se o arquivo foi modificado desde a última leitura

"

variables="
Variaveis:

    test -v var -> retorna True se a variável existe
    test -R var -> retorna True se a variável existe e é um nome de refência

"



while [ -n "${1}" ];do
    case "${1}" in
        "logica")
            echo "${logic}"
            ;;
        "aritmetica")
            echo "${arithmetic}"
            ;;
        "strings")
            echo "${strings}"
            ;;
        "arquivos")
            echo "${files}"
            ;;
        "variaveis")
            echo "${variables}"
            ;;
        *)
            echo "Opção ${1} inválida"
            ;;
    esac
    shift
done