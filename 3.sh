#!/bin/bash

menu="
r - Digite o nome de um arquivo que será processado.
a - Remova todas as letras do arquivo.
b - Remova todos os dígitos do arquivo.
c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por ~.
q - Saia do script.
"
arq=""
while true;
do
    echo "$menu"
    read -p "Opção: " opt

   case "${opt}" in
       "r"|"R")
            read -p "Arquivo: " in
            arq="$in"
       ;;
       "a"|"A")
            sed 's/[a-zA-Z]*//g' "$arq" > "novo"
            echo "$(<novo)" > "$arq"
            rm "novo"
       ;;
       "b"|"B")
            sed 's/[0-9]*//g' "$arq" > "novo"
            echo "$(<novo)" > "$arq"
            rm "novo"
       ;;
       "c"|"C")
            sed 's/[^A-Za-z0-9_.;]/~/g' "$arq" > "novo"
            echo "$(<novo)" > "$arq"
            rm "novo"
       ;;
       "q"|"Q")
            exit 0
       ;;
       *)
            echo
            echo "###############################"
            echo
            echo "Escolha uma das opções válidas!"
            echo
            echo "###############################"
            echo
       ;;
   esac




done
