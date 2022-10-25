## cat
`man cat` ou `cat --help` para mais informações sobre o comando  

`cat` exibe os conteúdos de um arquivo e diferentemente de `head` ou `tail`, o arquivo é exibido por
completo, independente de ser textual ou binário.  
* Mostrar conteúdo de um arquivo de texto  
`$ cat oie.txt`  

* Enumera as linhas de um arquivo e as exibe
`$ cat -n oie.txt`  

O comando cat é bastante simples, e pode ser usado com vários arquivos:  
* Imprime os dados de todos os arquivos que compõe um código c e o coloca em um novo arquivo  
`$ cat pre.txt main.txt puts.txt close.txt > arquivo.c`  
