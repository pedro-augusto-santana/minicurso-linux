## find
`man find` ou `find --help` para mais informações sobre o comando  
  
O comando `find`, parte do GNU findutils é utilizado para localizar e executar comandos em arquivos
e diretórios seguindo diversos padrões de pesquisa, por nome, tamanho, data de criação, etc. Vejamos
alguns exemplos:  
* Mostrar todos os arquivos e pastas recursivamente:  
`$ find`  

* Mostrar todos os arquivos e pastas ignorando arquivos ocultos (prefixados com "."):  
`$ find . -not -ipath "*/.*"` - (i)path indica _ignore-case_, ou seja, maíusculas e minúsculas serão
tratadas como iguais, para fazer uma pesquisa que considere capitalização use `path`.  
O prefixo _i_ funciona para diversos parâmetros do `find`.  

* Encontrar todos os arquivos que possuam a extensão ".jpg" recursivamente:  
`$ find . -type f -iname "*.jpg"`  

Podemos encadear parâmetros também, por exemplo, fazendo a mesma consulta anterior ignorando as
pastas e arquivos ocultos:
`$ find . -type f -iname "*.jpg" -not -ipath "*/.*"`  

* Mostrar o conteúdo de todos os arquivos ".c" ou ".h" em todas as pastas na hierarquia
`$ find . -type f \( -iname "*.c" -or -iname "*.h" \) -exec cat {} \;`

