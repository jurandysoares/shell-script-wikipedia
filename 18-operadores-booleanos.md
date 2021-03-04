(operadores-booleanos)=
        
# Operadores Booleanos

  | Operadores        | Descrição                                                                                                              | Exemplos                                                       |
  | ----------------- | ---------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
  | `!` (Diferente) | Conhecido como Operador Lógico de negação. Utilizado para inverter uma condição de verdadeira para falsa e vice versa. | `[ ! $x = 22 ]` <br> Se o valor de x é diferente de 22.             |
  | `-o` (ou)       | Conhecido como Operador Lógico **OR**. Utilizado para testar duas ou mais possibilidades.                              | `[ $x = 22 -o $x = 23 ]` <br> Se o valor de x é igual a 22 ou 23   |
  | `-a` (e)        | Conhecido como Operador Lógico **AND**. Utilizado para testar duas ou mais possibilidades.                             | `[ $y = 22 -a $x = 22 ]` <br> Se o valor de x e y são iguais a 22 |
