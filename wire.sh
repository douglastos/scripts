#!/bin/bash
 
#depois de atualizar executar os comandos
echo "configurando wireshark"
 
apt-get install libcap2-bin wireshark
chgrp douglas /usr/bin/dumpcap
chmod 750 /usr/bin/dumpcap
setcap cap_net_raw,cap_net_admin+eip /usr/bin/dumpcap
 
echo "configurado só usar!"
