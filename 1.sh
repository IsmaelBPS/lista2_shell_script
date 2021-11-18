menu="
Digite o respectivo número para o conceito do direcionadmento:
    1 - >
    2 - >>
    3 - 2>
    4 - 2>>
    5 - &>
    6 - &>>
    7 - <
    8 - <<
    9 - <<<
    10 - | 

    0 - Sair
"


while [ true ]; do
    echo "${menu}"
    read -p "Opcao: " opcao
    echo "-----------------------"
    case "${opcao}" in
        0)
            echo "Saindo..."
            break
        ;;
        1)
            echo "Redireciona a saída do comando para um arquivo, reescrevendo o arquivo."
            echo "EX: cat /etc/passwd > users.txt"   
        ;;
        2)
            echo "Redireciona a saída, porém concatenando ao final do arquivo."
            echo "EX: echo \"Aricléia\" > nomes.txt "
        ;;
        3)
            echo "Redireciona saída de erro reescrevendo o arquivo"
            echo "EX: ./script.sh 2> error.log"
        ;;
        4)
            echo "Redireciona saída de erro, porém concatenando ao final do arquivo."
            echo "EX: ./script2.sh 2>> errors.log"
        ;;
        5) 
            echo "Redireciona as saídas sem e com erro reescrevendo o arquivo."
            echo "EX: cat /etc/shadow &> error_or_log.log"
        ;;
        6)
            echo "Redireciona as saídas sem e com erro, porém concatenando ao final do arquivo."
            echo "EX: cat /etc/gshadow &>> errors_and_logs.log"
        ;;
        7)
            echo "Redireciona um arquivo para a entrada de um comando."
            echo "EX: um arquivo contendo nomes e será necessário procurar por um"
            echo "grep pedro < nomes.txt"
        ;;
        8)
            echo "Redirecionador em que será necessário digitar o que foi definido como ponto de parada."
            echo "EX: cat << FIM  "
            echo "Será impresso tudo que foi digitado antes de digitar FIM"
        ;;
        9)
            echo "Redireciona uma string para a entrada do comando."
            echo "Ex: Um script que imprime informações de uma pessoa após uma consulta em um DB "
            echo "./infos.sh <<< \"Ednaldo Pereira\""
        ;;
        10)
            echo "Redireciona a saída de um comando para a entrada de outro comando."
            echo "EX: ls ~| grep D | sort"
            echo "Exibirá da pasta home em ordem alfabética todos os diretórios começando com D"
        ;;
        *)
            echo "Opcao invalida..."
            sleep 3
            clear
        ;;
    esac
    
done
