#!/bin/bash
#organização das imagens para melhor verificar.
 
#variavel do dia
hoje=$(date +"%Y%m%d")
 
#criação das pastas de backup
if [ ! -d "/home/camera/ftp/adm/diarias/$hoje" ]; then
   mkdir /home/camera/ftp/adm/diarias/$hoje
fi
 
#mover os arquivos adm
cd /home/camera/ftp/adm/
 
for arquivo in `ls *.jpg`; do
 mv $arquivo diarias/$hoje/
done
