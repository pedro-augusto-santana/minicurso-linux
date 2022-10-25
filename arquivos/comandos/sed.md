## sed
`man sed` para mais informações sobre o comando
O sed é um utilitário de substituição, onde podemos procurar um padrão e o substituir usando
expressões regulares.

* Imprime da linha 1 à 12:
`sed -n '1,12p' arquivo.txt`

* Coloca a string "Item: " no começo de cada linha:
`sed -i "s/^/Item: /g" arquivo.txt`

* Deleta todas as linhas em branco do arquivo:
`sed -i "s/^$//g" arquivo.txt`

* Deleta todas as linhas que contenham "castanha":
`sed -i /castanha/d arquivo.txt`

* Substituir todas as ocorrências de "MacOS" e "Windows" por "Linux"
`sed -i "s/MacOS\|Windows/Linux" mentira.txt`

O sed é (quase) uma linguagem por si só, não é tão complexa quanto programas como o awk. Mas possui
sim uma sintaxe robusta, então mantendo a brevidade, manteremos poucos comandos aqui, mas existe uma
boa lista de comandos no link (em português):  
<https://terminalroot.com.br/2015/07/30-exemplos-do-comando-sed-com-regex.html>
