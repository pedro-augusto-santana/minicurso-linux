## Terminal
O Terminal, também chamado de Interface de Linha de Comando é provavelmente a ferramenta mais
importante dos sistemas UNIX. Ele permite uma flexibilidade e agilidade inigualáveis quando
comparado à sistemas Windows, ao custo de uma curva de aprendizado mais íngrime e abordagens pouco
convidativas para iniciantes  
Primeiramente é bom determinar o que é um "shell". Conforme foi exibido no curso, um sistema
operacional é constituido pelo kernel, ou núcleo do sistema, que possui contato direto com o
hardware, para interagir com esse hardware, é necessário que o SO forneça essa capacidade de
interação de maneira padronizada e mais simples do que lidar diretamente com o hardware. Essas
funcionalidades expostas são acessadas pelos programas que o usuário interage, as interfaces:
Gŕaficas (GUI) e de Linha de Comando (CLI). Esta última, denominada _shell_.  
Existem vários emuladores de terminal: Gnome Terminal, tmux, urxvt, Alacritty, entre inúmeros
outros. E também existem diversos SHELLS, Bourne Shell (sh), Bourne Again Shell (bash), Z Shell (zsh),
C Shell (csh), e a lista continua, cada um com particularidades e especificações próprias. Por ser o
padrão no Linux (e no MacOS até a versão Catalina) o BASH será o foco atual. De longe o mais popular
dos shells, foi criado em 1989, derivado do Bourne Shell.  
  
### Variáveis de ambiente
`man env` ou `env --help`  
São variáveis relacionadas à sessão, sistema ou sessão de usuário.  
* Mostrar todas as variáveis de ambiente:  
`env`  
O comando `env` mostra todas as variáveis de ambiente da sessão atual.  
Podemos usar o comando `export` para configurar o ambiente atual e adicionar uma variável de ambient
customizada para essa seção:  
`export PYTHON_NOVO=python3`  
  
Agora se rodarmos o comando `which $PYTHON_NOVO` o resultado obtido será:  
`/usr/bin/python3`  
  
Podemos citar algumas variáveis de ambiente notáveis:  
`$USER`: exibe o usuário atual  
`$SHELL`: retorna o executável que está sendo utilizado para rodar o shell atual  
`$PWD`: retorna o diretório atual  
  
### $PATH
No Windows também existe essa configuração, podendo ser configurada na interface gráfica do sistema,
na janela de variáveis de ambiente. É notavelmente confusa.  
No Linux, é muito mais simples a configurar, podemos por exemplo, adicionar uma pasta em nossa /home
e colocar alguns executáveis nela, como por exemplo, programas de linha de comando que sejam
baixados da internet, ou mesmo programas complexos. Podemos criar uma pasta /home/$(whoami)/bin, e para
que não seja necessário usar o caminho completo da pasta, adicioná-la ao $PATH:  
`export $PATH=/home/$(whoami)/bin:$PATH`  
  

### Expansões
Expasões são palavras (no caso símbolos, mas a terminlogia correta é _palavra_) que o shell utiliza
e converte automaticamente em alguns valores, podemos citar:  
`~`: expande para a pasta home do usuário atual  
`!([0-9]+)`: executa o comando de número N do histórico (acessado com `history`)  
`!!`: expande para o comando anterior  
`*`: expande para todos os itens no diretório atual (pode ser usado com regex) por exemplo  
Ex:  
* Listar todos os arquivos que possuam extensões com 3 caracteres (.pdf, .mp3, .png, etc.):  
`ls *.???`  
  
* Listar todos os arquivos com o mesmo formato de `*.tar.gz`:  
`ls *.???.??`  
  

### Definindo variáveis
Variáveis podem ser definidas à qualquer momento, somente para a sessão atual, e podem ser usadas em
operações posteriores  
Ex:  
`nome="SEU NOME AQUI"`  
`echo $nome`  
  

### Subcomandos
É possível rodar subcomandos utilizando a sintaxe `$(COMANDO)`, por exemplo:  
* Exibir a data atual com uma mensagem:  
`echo "Olá, $(whoami)! A data de hoje é $(date +%d/%m/%Y)"`  
  

### Aliases
Você pode alterar o nome de comandos ou sequências de comandos por meio de _aliases_:  
* configurar o grep para sempre utilizar cores  
`alias grep='grep --color=auto'`  
  
* configurar o `ls -l` para o comando `ll`:  
`alias ll='ls -l'`  
  
* configurar o git para ser chamado apenas pela letra `g`:  
`alias g='git'`  
  

#### alias vs variáveis
Variáveis são muito mais flexíveis, o escopo de uso dos _aliases_ é bem mais limitado, somente para
substituir comandos ou facilitar uso de parâmetros  
Pense em uma variável e um pré processador `#define` em C, tudo o que é feito para o alias é o que o
`#define` faz para algum valor, apenas o substitui quando for processado, no caso de C pelo
compilador, no caso do terminal pelo Shell  
  

### Operadores de Redirecionamento e Controle
Além dos operadores citados existem vários outros que um ou mais shells suportam, porém só iremos
nos concentrar nos mais utilizados.  
Antes de mais nada, bash possui [curto circuito](https://en.wikipedia.org/wiki/Short-circuit_evaluation).  
Entre os operadores de controle, temos:  
`&&`: AND lógico (não executa o próx. em caso de falha)  
`||`: OR lógico (não executa o próx. em caso de sucesso)  
`;`: terminador de linha (sempre executa o próximo)  

Já os operadores de redirecionamento, podemos utilizar:  
`|`: Operador pipe (redirecionamento para outros programas)  
`>`: Operador de redirecionamento de saída (_replace_)  
`>>`: Operador de redirecionamento de saída (_append_)  
`<`: Operador de redirecionamento entrada (de arquivo para programa)  
`<<`: Operador de entrada (similar ao do heredoc do PHP)  

### sudo
Sudo significa "superuser do", ou "super usuário, faça", ele permite que você execute comandos com
alto requerimento de privilégio.

Pronto! Você agora está familiarizado com o terminal, conhece o ambiente em que está, podemos então
partir para algumas abordagens mais específicas, estudando alguns comandos e alguns fluxos de
trabalho que podemos realizar utilizando os comandos, desde gerenciamento de arquivos até
processamento de texto, desde de manipulação de redes até instalação e manutenção de pacotes.  
Quanto estiver pronto(a) para conhecer mais comandos e funcionalidades do terminal, assim como
demonstrações básicas de utilização, comece por [aqui!](./arquivos/comandos/basics.md).  
  
