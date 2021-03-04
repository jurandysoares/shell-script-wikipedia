(operadores-aritmeticos)=
        
# Operadores Aritméticos

 | Operadores          | Descrição                                                                        | Exemplos                                                                     |
 | ------------------- | -------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
 | `+`  (Adição)       | Utilizado para somar valores em ambos lados do operador                          | `$(expr 10 + 20)` será igual 30                                              |
 | `-`  (Subtração)    | Utilizado para subtrair valores do lado direito para o esquerdo                  | `$(expr 20 - 30)` será igual -10                                             |
 | `*` (Multiplicação) | Utilizado para multiplicar valores em ambos lados do operador                    | `$(expr 2 * 6)` será igual a 12                                              |
 | `/`  (Divisão)      | Utilizado para dividir o valor esquero pelo direito do operador                  | `$(expr 12 / 6)` será igual a 2                                              |
 | `%`  (Módulo)       | Utilizado para dividir o valor da esquerda pelo da direita e retornar o restante | `$(expr 12 % 6)` será igual a 0                                              |
 | `=`  (Igual)        | Utilizado para atribuir valores e para testar valores.                           | `x=2` atribui o valor 2 para variável `x`. <br> `[ $x = 2 ]`, se `$x` é igual a 2 |
 | `!=`  (Não igual)   | Utilizado para testas se um valor é diferente de outro.                          | `[ $x != 3 ]`, se `$x` é diferente de 3                                      |