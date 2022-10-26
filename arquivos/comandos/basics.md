## Comandos básicos
Esses comandos são utilizados frequentemente no Linux, provavelmente alguns dos mais importantes,
são comandos de navegação, criação e deleção de arquivos e pastas, entre outros, os comandos
primários para usar a linha de comando.  
* cd
* ls
* mv
* touch
* mkdir
* open
* head
* tail
* less
* more
  
> Digite `man &COMANDO` para ver o manual dos comandos acima

### Navegação
Da mesma forma que no Windows, o sistema de arquivos é organizado de maneira hierárquica, com
pastas, a terminologia correta no Linux seria _diretórios_, e arquivos, sendo necessário saber tanto
manipular os itens quanto navegar pelo seu computador.  
O comando mais básico de navegação é o `cd` (change directory). Sua utilização não poderia ser mais
simples:  
* `cd pasta/`: Troca para a pasta solicitada  
* `cd pasta/pasta/pasta/`: Troca para a pasta na hierarquia  

Um caso de uso específico, que você pode encontrar e se confundir, são os "arquivos" (tecnicamente
são _hard links_ do próprio sistema de arquivos) `(.)` e `(..)`. Esses 2 itens se referem,
respectivamente à pasta atual (.), e a pasta pai (..). Por exemplo:  
* Para ir para pasta imediatamente superior:  
`cd ..`  
  
* Subir 3 pastas na hierarquia:  
`cd ../../..`  
  
* Ir para uma pasta tio:  
`cd ../ben/`  
  

### Manipulação de arquivos
> Pronto. Já estou em uma pasta, e agora?  
  
Bom, agora podemos nos preocupar em de fato criar e manipular arquivos. Podemos criar arquivos com o
comando `touch` e diretórios com o comando `mkdir`:  
Criar arquivos: `touch arquivo1.txt arquivo2.txt arquivo3.txt`  
Criar pastas: `mkdir pasta1 pasta2 pasta3`  
Criar hierarquia de pastas: `mkdir -p pasta/filho/neto pasta2/filho/neto/bisneto/`  

> Ok. Criei a pasta e alguns arquivos, como eu vejo essa estrutura?  
  
Como tudo no Linux, existem _n_ maneiras de fazer qualquer coisa, mas a mais simples, é utilizando o
comando `ls` (`man ls`):
* Listar arquivos e pastas na pasta atual: `ls`  
* Listar itens incluindo itens ocultos: `ls -a`  
* Listar itens com informações detalhadas: `ls -l`
* Listar em formato "humano": `ls -lh`

Podemos também renomear e mover arquivos, com o comando `mv` e copiar com o comando `cp`  
* Renomeando um arquivo: `mv arquivo.txt codigo.cpp`  
* Movendo um arquivo uma pasta acima: `mv arquivo.txt ..`  
* Movendo vários arquivos para a pasta acima: `mv arquivo1.txt arquivo2.txt arquivo3.txt -t ..`  
* Movendo todas as imagens .jpg ou .png para a pasta acima: `mv *.jpg *.png -t ..`  
* Copiando um arquivo para outro: `cp arquivo.txt arquivo(copia).txt`
* Copiar para outra pasta: `cp arquivo.txt ../`

> Tá, já sei criar e mover arquivos. Como eu deleto?  
Vamos definir primeiro o que é deletar, mas para definir primeiro o que é deletar, precisamos
definir o que é um arquivo, e como ele fica representado na memória. Um arquivo, como o vemos em um
explorador de arquivos, é apenas um ponteiro para um endereço de memória, onde está localizado o
início do arquivo.  
Então quando deletamos os arquivos, apenas apagamos esse referência (em alguns casos, de fato
deletamos os conteúdos na memória, mas spoilers não são bem vindos por enquanto), e marcamos as
posições anteriores como PODE SOBRESCREVER. Logo, o comando para "deletar" um arquivo é o comando
`rm`:  
* Deletamos um arquivo assim:  
`rm arquivo.txt`  
  
* Podemos deletar pastas vazias também (com o comando `rmdir`):  
`rmdir pasta_vazia`  
  
* Pastas que contém itens:  
`rm -rf pasta_com_itens`: -r (recursive): recursivamente, -f (force): sem prompt para confirmar deleção  
  
### CUIDADO
O comando `rm` NÃO DELETA PARA A LIXEIRA, será necessário usar alguma outra utilidade de linha de
comando, como o `trash` ou o `gio trash`, então a deleção é direta e PERMANENTE. Então é bom tomar
cuidados extras com a utilização do `rm`, talvez substituir o comando por `mv` ou `ls` para mostrar
primeiro quais itens seriam afetados.  
Um comando potencialmente devastador, e que antes tinha potencial para destruir até o firmware,
deixando o computador inutilizável:  
`rm -rf / --no-preserve-root`  
Esse comando NUNCA deve ser utilizado em um sistema no qual você possua dados importantes, seria
necessário reinstalar o sistema operacional.  
`rm` pode ser recuperado (porém é muito difícil) com alguns softwares de recuperação, que escaneiam
o sistema de arquivos, e remonta links para os arquivos encontrados, a taxa de sucesso disso é longe
de satisfatória, e na maioria dos casos, não funciona bem, PORÉM, pode funcionar, e alguns arquivos
podem ser recuperados.  
  
`shred` é ***irrecuperável***.  
  
### Paginadores + head&tail
`man head`,`man tail`, `man less`, `man more` para informações sobre os comandos
O comando `head` e seu irmão `tail` mostram um número de linhas (por padrão 10, pode
ser configurado com o parâmetro `-n NUMERO`) de um determinado arquivo, respectivamente, partindo do
início do arquivo, e do final do arquivo.  
O `more` é um paginador muito rudimentar, presente apenas por razões históricas e de
compatibilidade, então iremos tratar de seu descendente `less`.  
O `less` pagina arquivos, ou seja, similar ao que o comando `man` mostra para páginas de manual, o
less faz para qualquer arquivo de texto, dessa forma, permite que o usuário leia arquivos de texto
grandes diretamente do terminal sem utilizar um editor de texto como nano ou vim.  

