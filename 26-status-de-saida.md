(status-de-saida)=
        
# Status de saída

O status de saída de um comando executado são valores, retornados pela chamada do sistema waitpid ou função equivalente. Os valores para o status de saída ficam entre 0 e 255; Os status de saída dos Shell builtins e comandos compostos também são limitados a esse intervalo. Sob certas circunstâncias, o shell usará valores especiais para indicar modos de falha específicos.

Para os propósitos do **Shell**, um comando que sai com um status de saída igual a `0` (zero) significa que a execução do script foi bem-sucedida. Você pode ver os exemplos passados anteriormente onde a última linha do script o status de saída é `0` (zero). Já um status de saída diferente de zero indica falha. Esse esquema aparentemente contra-intuitivo é usado para que haja uma maneira bem definida de indicar sucesso e uma variedade de maneiras para indicar vários modos de falha.

Quando um comando termina em um sinal fatal cujo número é `N`, o Bash por exemplo usa o valor `128+N` como status de saída. Se um comando não for encontrado, o processo filho criado para executá-lo retornará um status `127`. Se um comando for encontrado, mas não for executável, o status de retorno será `126`. Um exemplo de uma implementação simples de status de saída:

```bash
[ ! -e /bin/bash ] && { exit 2; }
```

O próximo exemplo irá checar se um comando não foi executado com sucesso:

```bash
ping -c1 wikipedia..org
[ $? -ne 0 ] && echo "O comando ping emitiu algum erro."
```

Os script passados acima são para exemplos de implementação.