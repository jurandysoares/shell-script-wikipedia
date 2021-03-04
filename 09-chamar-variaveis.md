(chamar-variaveis)=
        
# Chamar variáveis

Para chamar variáveis utiliza-se o sinal de cifrão `$var`. O cifrão (`$`) também é bastante utilizado em script sh,
para executar programas externos exemplo: `var=$(expr 2 + 2)` irá armazenar a saída do programa
`expr`. E o cifrão mais chave `${var}` é comum ser utilizado das seguintes maneiras:

Para acessar posições em um array `${var[1]}`. (Obs.: não funciona para sh, apenas para Bash)

E também para substituir o valor de uma variável se a mesma não possuir um valor: `${var:-nome}` -
`${var:=nome}` - `${var:-$(programa)}` dessas maneiras irão substituir pelo que for passado depois de `:-` ou `:=`,
exemplo em código:

```bash
read -p "Digite um nome: "myname
echo "${myname:=$(whoami)}"
```

O código acima irá pedir para o usuário digitar um nome, caso digite irá utilizar `echo` para exibir o nome
digitado na saída padrão, caso contrário irá substituir pela saída do comando `whoami`, ao invés de substituir
pela saída de um comando, você pode substituir por outro valor exemplo: `${myname:=BourneShell}`.