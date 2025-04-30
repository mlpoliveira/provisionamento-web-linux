#!/bin/bash

echo "Atualizando o servidor..."
sudo apt update -y && sudo apt upgrade -y

echo "Instalando Apache2..."
sudo apt install apache2 -y

echo "Instalando unzip..."
sudo apt install unzip -y

echo "Baixando a aplicação para o diretório /tmp..."
wget -O /tmp/main.zip https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando os arquivos..."
unzip /tmp/main.zip -d /tmp/

echo "Copiando arquivos da aplicação para o diretório padrão do Apache..."
sudo cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Ajustando permissões..."
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

echo "Reiniciando Apache..."
sudo systemctl restart apache2

echo "Provisionamento concluído com sucesso!"
