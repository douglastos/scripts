#!/bin/bash
#VARIAVEIS
read -p "informe server: " HOST
read -p "informe compartilhamento: " PASTA
read -p "informe seu usuario: " USER
  
#desmonta o ponto de montagem caso ele ja esteja montado
umount /mnt/$PASTA
  
# remove (caso exista pasta) e adiciona a pasta para o ponto de montagem
rm -r /mnt/$PASTA
mkdir /mnt/$PASTA
  
mount -t cifs //$HOST/$PASTA /mnt/$PASTA -o username=$USER,dir_mode=0777,file_mode=0777
 
df -h
