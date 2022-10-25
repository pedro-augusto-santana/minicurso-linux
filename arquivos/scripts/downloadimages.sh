#!/bin/bash

# gerador de imagens aleatório
# echo "Digite o número de imagens: "
# read num_imgs

read -p "Digite o número de imagens: " num_imgs
read -p "Digite a altura e largura das imagens: " w h
mkdir "baixadas"
for i in $(seq 1 $num_imgs)
do
    wget "https://picsum.photos/$w/$h.jpg" -O "baixadas/$(echo $EPOCHSECONDS).jpg"
    sleep 1
done

