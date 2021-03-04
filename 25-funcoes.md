(funcoes)=
        
# Funções

O scripts em Shell também aceitam funções. **Bash** e **sh** aceitam um mesmo padrão de funções, mas o **Bash** também aceita um outro formato que o sh não reconhece. Ambos formatos são mostrados abaixo:

```bash
# Ambos aceitam esse formato
minha_função(){
    echo
}
# Esse formato apenas Bash aceitará
function minha_função(){
    echo
}
```

Para chamar uma função basta digitar o nome da função em uma linha após a declaração da função como se fosse um comando. Exemplo:

```bash
nova_função() {
echo "Olá, Mundo!"
}
nova_função
```

