#!/bin/bash
set -e

# Variables
APP_URL="https://html5up.net/story/download"
DOWNLOAD_DIR="/tmp/story_download"
TARGET_DIR="/var/www/html"

echo "=== Atualizando o servidor ==="
echo "Atualizando listas de pacotes..."
apt-get update -y
echo "Atualizando pacotes instalados..."
apt-get upgrade -y 

echo "Instalando Apache2 e unzip..."
apt-get install apache2 unzip -y 

echo "=== Preparando diretório de download ==="
rm -rf "$DOWNLOAD_DIR"
mkdir -p "$DOWNLOAD_DIR"
cd "$DOWNLOAD_DIR"

echo "Baixando a aplicação 'Story'..."
wget -O story.zip "$APP_URL"

echo "Descompactando arquivos..."
unzip -o story.zip

echo "Copiando arquivos para $TARGET_DIR ..."
cp -R ./* "$TARGET_DIR"/

echo "Limpando arquivos temporários..."
rm -rf "$DOWNLOAD_DIR"

echo "=== Atualização concluída! ==="
