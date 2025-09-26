(verificar-parametros-de-linha-de-comando)=
        
# Verificar parâmetros de linha de comando

Para verificar parâmetros de linha de comando com **Bourne shell**, há apenas uma maneira recomendável:
utilizar **loop** + **case** + **shift**. Já com **Bash** há mais de uma, pelo fato de o **Bash** suportar expressões regulares.
Testar parâmetros utilizando **loop** + **case** + **shift**:

```bash
while [ $# -gt 0 ]; do
    case "$1" in
 
        version | -v) 
           echo "Release v0.1.0 - from Wikipedia.org"
           ;;

        *) 
            echo "$0: Este parâmetro '$1' não foi reconhecido, saindo...";
            exit 1
            ;;
    esac
    shift
done       

```

O loop while acima irá iniciar se e somente se houver um parâmetro. O case irá analisar os parâmetros e o shift irá mudar de parâmetros se houver mais de um e terminar o loop caso não haja mais nenhum. Caso você tenha muitas opções para o seu script deixe help e version sempre como as primeiras e utilize break para terminar o loop.
