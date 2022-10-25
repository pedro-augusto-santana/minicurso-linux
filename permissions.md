## Permissões
`man chown` e `man chmod` para mais informaçõe sobre os comandos utilizados  
  
O Linux é um SO extremamente poderoso quando se trata de gerenciamento de usuários. E para isso, ele
fornece diversas opções para gerenciamento de hierarquia e permissões.
As permissões (de algum arquivo) do Linux possuem 3 componentes:  
* Ler       - (r)ead  
* Escrever  - (w)rite  
* Executar  - e(x)ecute  
  
Se utilizarmos `ls -l` para ver detalhadamente algum arquivo ou diretório, iremos ver antes de seu
nome, tamanho, etc. Suas permissões, como por exemplo:  
  
`-rw-rw-r-- 1 pedro pedro 0 out 19 15:40 receita.txt`  
`drwxrwxr-x 2 pedro pedro  4096 out 19 15:42 pasta`  
  
Notamos as seguinte estruturas:
  `-rw-rw-r--`  
  `drwxrwxr-x`  
Mas o que significa?  
Primeiramente, temos os seguintes componentes:  
* `-`: o primeiro '-' indica que o que está sendo mostrado é um arquivo  
* `d`: esse 'd' prefixando o diretório pasta, indica um diretório.  
  
Agora com os outros 9 elementos do array, temos a seguinte estrutura:  
`(permissões dono)(permissões grupo)(permissões globais)`:  
Ou seja, lendo os dados que recebemos temos que para o arquivo 'receita.txt', temos:  
* `rw-`: dono pode ler, escrever, mas não executar  
* `rw-`: o grupo pode ler, escrever, mas não executar  
* `r--`: qualquer outro pode apenas ler, mas não escrever nem executar  
  
E para a pasta 'pasta':  
`rwx`: dono pode fazer tudo (ler, escrever e executar)  
`rwx`: grupo pode fazer tudo (ler, escrever e executar)  
`r-x`: outros podem ler e executar, mas não escrever  
  
NOTA: diretórios devem ser executáveis para que seja possível ver o conteúdo interno.  
  
As permissões são descritas em notação octal, e possuem valores específicos, que permitem que a
alteração de permissões seja extremamente eficaz, de modo que: ler = 4, escrever = 2, executar = 1.  
No momento de definir a permissão utilizamos a soma dos valores para encadear permissões, por
exemplo:  
* tudo liberado: 777  
* tudo liberado para usuário + grupo: 770  
* tudo liberado para usuário + grupo e outros podem apenas ler: 774  
* dono pode tudo, os outros só podem ler: 744  
  


