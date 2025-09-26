(variaveis-pre-definidas)=
        
# Variáveis Pré-definidas

Os scripts em Shell possuem as seguintes variáveis pré-definidas:
- `$?` - Armazena o status de saída do último programa executado;
- `$#` - Armazena a quantidade de parâmetros de linha de comandos;
- `$$` - Armazena o valor PID (Process Identifier) do script em shell que estiver em execução;
- `$@` - Armazena o valor de todos os parâmetros passados, similar a variável argv presente nas
linguagens de programação C e C++;
- `$!` - Armazena o PID do último processo em segundo plano. Isso é útil para acompanhar o processo à medida que o trabalho é realizado;
- `$0, ..., $9` - Armazena os valores de todos os parâmetros de linha de comando separadamente.

