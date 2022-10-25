## grep
`man grep` para mais informações sobre o comando.

* Procura no arquivo mentira.txt por "Windows"
`grep "Windows" mentira.txt`

* Procura no arquivo mentira por "Windows" e por "MacOS" ignorando capitalização:
`grep -iE "windows|macos" mentira.txt`

* Procure em todos os arquivos na pasta atual pela string "Linux":
`grep -r "Linux"`

* Procura por "Ovos" em compras.txt, mostrando o número da linha no qual foi encontrada:
`grep -ni "ovos" compras.txt`

* Procura por "João", "Maria Lúcia" e "Jeremias" na letra de Faroeste Caboclo:
`grep -E -n "João|Maria Lúcia|Jeremias" letra.txt`

