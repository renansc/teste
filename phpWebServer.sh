#!/bin/bash
#busca no arquivo os dados salvos.
ipLocal=`sudo ifconfig | grep "inet 192.168" |cut -c14-26`
#retira caracter vazio da string
ip=`echo $ipLocal|sed 's/ //g'`
echo "Endereço Atual é $ip"
echo "Rodando na Raiz" && pwd
#executa web service na pasta atual porta 8000
echo "Iniciando WebService ..."
echo `sudo php -S $ip:8000` && `sleep 5`
