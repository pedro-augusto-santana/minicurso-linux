## Editores de texto & programas de linha de comando
### Nano
`man nano`  
O editor Nano é um editor baseado no antigo Pico, um editor muito simples que pode ser usado para
editar arquivos de texto de qualquer natureza, desde simples arquivos de configuração até código
fonte de alta complexidade.  
Para utilizar, só é necessário chamar o comando `nano` com algum nome de arquivo, caso ele não
exista, o editor irá abrir um _buffer_ com o nome e poderá salvar o arquivo em disco se necessário
* Editando um código fonte em Python:  
`nano meuarquivo.py`  

O nano pode editar qualquer arquivo de texto, mas ele pode ser considerado muito simples para determinados
casos de uso. Usuários avançados ou que precisam escrever/editar um grande volume de texto
consideram a funcionalidade do nano muito básica e ineficiente, além de deixar à desejar no quesito
de extensibilidade. Logo, pode ser interessante procurar um editor mais robusto para atender à essas
necessidades. Entra: _vim_.  
### Vim
`man vim`  
Toda essa documentação foi escrita em um editor de texto sem interface gráfica, o [Neovim](https://neovim.io/), um editor
modal derivado do Vim, que por sua vez deriva do Vi.  
Todas* as distribuições Linux vem com alguma versão do Vi instalada, geralmente uma versão mínima do
vim, chamada pelo comando `vi`, porém essa versão não possui todas as funcionalidades então faremos
a instalação usando o gerenciador de pacotes, no caso do Ubuntu:  
`$ sudo apt install vim`  

O Vim merece um curso completo por ele mesmo, é um editor extensível, extremamente programável e
igualmente poderoso, porém com uma curva de aprendizado muito íngreme.  
Então tudo o que faremos vai ser acessar um arquivo de texto simples, e adicionar seu nome.  
`$ vim meunome.txt`: para abrir o editor já em um arquivo de texto chamado 'meunome.txt'  

Ao acessar o editor, aperte "i" ou "a" para entrar no modo de inserção, digite seu nome normalmente,
em seguida aperte "ESC" para retornar ao modo normal. E digite ":w" para salvar as alterações e
continuar no editor, ":wq" para salvar e sair, ou ":q!" para sair sem salvar.  

*: A grande maioria, mas pode haver exceções
