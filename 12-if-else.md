(if-else)=
        
# If-else

Declaração **if else** para scripts em **bash** ou **sh**, há diversas formas diferentes. Tenha cuidado para não esquecer os espaços entre os colchetes. Eles são muito importantes:

A declaração *if else* mais comum e mais utilizada é a seguinte:

```bash
if [ $1 = $2 ]; then
    echo "Parametro 1 ($1) é igual a 2 ($2)."
else
    echo "Parametro 1 ($1) não é igual a 2 ($2)."
fi
```

Mas existe uma abreviação que também é muito utilizada que é menor e muito boa para teste de linha única:

```bash
[ $1 = $2 ] && { echo "Parametro 1 ($1) é igual a 2 ($2)."; exit 0; } || { echo "Parametro 1
($1) é diferente de 2 ($2)."; exit 0; }
```

