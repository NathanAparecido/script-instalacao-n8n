# Instalador do N8N Ultima Versão em Docker

Este script automatiza a instalação do [N8N](https://n8n.io/) em um ambiente Docker. Ele foi desenvolvido para simplificar o processo de configuração do N8N, configurando o contêiner e ajustando o sistema operacional para a zona de tempo correta.

<p align="center">
    <img windth="50" src="https://s3.typoniels.de/typoniels-strapi/production/n8n_686d33f304.webp"
      </p>

## Como funciona

O script realiza os seguintes passos:

1. Atualiza e faz upgrade dos pacotes do sistema.
2. Instala o Docker, caso não esteja instalado.
3. Configura o fuso horário para **America/Sao_Paulo**.
4. Executa o contêiner Docker do N8N configurado para:
   - Reiniciar automaticamente em caso de falhas.
   - Mapear a porta **5678** para acesso via navegador.
   - Persistir os dados do N8N no diretório `~/.n8n` do host.

Ao finalizar a execução, o script exibirá a URL de acesso ao N8N.

## Pré-requisitos

- Sistema operacional baseado em Linux.
- Acesso com privilégios de administrador (root) ou sudo configurado.

## Como usar

1. **Baixe o script** ou copie o código diretamente.
2. **Dê permissão de execução** ao arquivo:
   ```bash
   chmod +x install_n8n.sh
   ```
3. Execute o script:
   ```bash
   ./install_n8n.sh
   ```
Após a execução, você verá a mensagem com a URL para acessar o N8N.

## Exemplo de saída
  ```bash
  INICIANDO SETUP DO N8N 
  N8N INSTALADO COM SUCESSO!
  Acesse a URL: http://<seu-endereço-ip>:5678
  ```
Substitua <seu-endereço-ip> pelo IP da máquina onde o script foi executado.

## Personalizações

Se desejar alterar algum parâmetro do contêiner ou da configuração, edite as seguintes partes do script:

Porta de acesso: -p 5678:5678
Volume de dados persistente: -v ~/.n8n:/home/node/.n8n
Fuso horário: timedatectl set-timezone America/Sao_Paulo

## Autor 

Criado por Nathan Aparecido
