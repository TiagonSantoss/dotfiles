#!/bin/bash

Defina as cores para a borda
COR_BORDER_ATIVA="#c4c3be"   # Cor da borda da janela ativa

bspc config focused_border_color $COR_BORDER_ATIVA
#bspc config normal_border_color $COR_BORDER_INATIVA


bspc desktop -l
