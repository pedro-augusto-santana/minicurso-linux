#!/bin/bash

# soma n números inteiros passados como parâmetros

if [[ $# -eq 0 ]]; then
    echo "Passe algum número como argumento"
    exit 1
fi

soma=0
for i in $@; do
    soma=$(expr $soma + $i)
done
echo "A soma dos números passados é $soma"
