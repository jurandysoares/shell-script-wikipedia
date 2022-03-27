(variaveis-globais)=
        
# Variáveis Globais

Variáveis globais ou variáveis de ambiente globais, são variáveis criadas/definidas com o comando export e
podem ser utilizadas por multiplos scripts em Shell. Um exemplo é a variável de ambiente `LANG` (Pré-
definida em diversas distribuições Linux), Podendo ser acessada por diversos arquivos de script em Shell.
Outras variáveis pré definidas são:

- `PATH`: define diretórios de procura por programas executados no shell;
- `USER`: informa o nome do usuário do shell;
- `HOME`: informa o caminho do diretório home do usuário;
- `LANG`: Idioma/Linguagem, especificada como locale;
- `PWD`: diretório atual;
- `TERM`: Tipo de terminal atual em uso.
- `UID`: UID do usuário atual.
- `RANDOM`: Gera um número aleatório

Experimente os seguintes comandos para ver as variáveis de ambiente (*Environment*, em inglês):
- `env`
- `env | grep -v '[:;]' | sort`

Há duas formas de criar uma variável global, exportar uma variável pré definida ou definir quando for exportar:

1. Definir e depois exportar a variável:
   ```bash
   VARIAVEL1=Teste
   export VARIAVEL1
   ```
2. Definir e exportar em uma única linha:
   ```bash
   export VARIAVEL2=Teste
   ```

