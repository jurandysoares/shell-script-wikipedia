(while)=
        
# While

Existem diversas formas de utilizar o loop while para scripts em Bash ou sh:

```bash
while [ -z $a_input ]; do
    read -p "Enter para continuar ou digite qualquer coisa para sair: " a_input
done

while [ -z $b_input ]; do 
    read -p "Enter para continuar ou digite qualquer coisa para sair: " b_input 
done

while read -p "Digite um numero: " c_input
do
    if [ $c_input -gt 25 ]; then
        echo "Numero $c_input é maior que 25"
        break
    else
        echo "Numero $c_input é menor que 25"
        break
    fi
done
```