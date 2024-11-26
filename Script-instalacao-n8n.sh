#!/bin/bash
# Instalador do N8N em Docker
# Autor: Nathan Aparecido

clear
echo "INICIANDO SETUP DO N8N "
sleep 5
clear
sudo apt -y update
sudo apt -y upgrade
sudo apt install -y docker.io
sudo timedatectl set-timezone America/Sao_Paulo
sudo docker run -d --restart unless-stopped --name n8n -p 5678:5678 -v ~/.n8n:/home/node/.n8n n8nio/n8n
host=$(sudo hostname -I | head -n1 | cut -d " " -f1)
clear
echo "N8N INSTALADO COM SUCESSO!"
echo "Acesse a URL: http://${host}:5678"
echo ""
