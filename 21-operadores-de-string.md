(operadores-de-string)=
        
# Operadores de String

| Operadores     | Descrição                                                                                                                                | Exemplos      |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ------------- |
| -z**           | Verifica se o tamanho do operando da string fornecido é zero; se tiver comprimento zero, retornará verdadeiro.                           | `[ -z $str ]` |
| -n**           | Verifica se o tamanho do operando da string especificado é diferente de zero; se tiver um comprimento diferente de zero, retornará true. | `[-n $str ]`  |
| `[ $uma_var ]` | Verifica se `uma_var` não é a string vazia; se estiver vazio, ele retornará false.                                                       | `[ $str ]`    |