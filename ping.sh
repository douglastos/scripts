#!/bin/bash
while true
do
 
#cores (esta variável esta declarada porem não esta sendo utilizada)
green="\033[1;32m"
red="\033[1;31m"
 
echo "=================================================="
echo "=               TESTE LINKS                      ="
echo "=================================================="
 
#temos duas opções para fazer esse script
#criar uma variável ou colocar o caminho absoluto
#vamos usar caminho absoluto
 
#teste do link da sua rede (IP FICTICIO)
if ! ping -c 2 192.168.0.1 > /dev/null;
then
echo -e "\033[1;31m DOWN \033[0m <-- router"
else
echo -e "\033[1;32m UP \033[0m <-- router"
fi
 
#teste do link de internet if ! ping -c 2 8.8.8.8 > /dev/null;
then
echo -e "\033[1;31m DOWN \033[0m <-- internet"
else
echo -e "\033[1;32m UP \033[0m <-- internet"
fi
 
#teste o DNS if ! ping -c 2 www.google.com.br > /dev/null;
then
echo -e "\033[1;31m DOWN \033[0m <-- DNS"
else
echo -e "\033[1;32m UP \033[0m <-- DNS"
fi
 
echo "=================================================="
echo "=================================================="
echo "=================================================="
 
sleep 5
clear
done
