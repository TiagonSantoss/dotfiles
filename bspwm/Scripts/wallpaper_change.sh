#!/bin/bash

# Diretório onde estão armazenadas as imagens do papel de parede
WALLPAPER_DIR="$HOME/Pictures/wallpaper"

# Função para selecionar uma imagem aleatória do diretório
get_random_wallpaper() {
    find "$WALLPAPER_DIR" -type f | shuf -n 1
}

# Loop infinito para mudar o papel de parede a cada 3 minutos
while true; do
    # Seleciona uma imagem aleatória
    WALLPAPER=$(get_random_wallpaper)

    # Altera o papel de parede usando o nitrogen
    nitrogen --set-zoom-fill "$WALLPAPER" --save

    # Aguarda 3 minutos (300 segundos)
    sleep 300
done
