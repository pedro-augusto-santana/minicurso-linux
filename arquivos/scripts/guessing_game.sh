#!/bin/bash

# gere um número randomico entre 1 e 15
gen=$((1 + $RANDOM % 15))

read -p "Digite um número! " guess

if [[ guess -eq gen ]]; then
    echo "PARABÉNS VOCÊ ACERTOU!"
else
    echo "Que pena, você errou. O número certo era ${gen}"
fi
