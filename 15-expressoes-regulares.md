(expressoes-regulares)=
        
# Expressões Regulares

Scripts em Bash possuem compatibilidade com Expressões Regulares, algo que scripts em Bourne Shell (sh) não
reconhecem:

```bash
#!/usr/bin/env bash
[[ $1 =~ ^sh|SH$ ]] && { echo "$1 - Bourne Shell"; }
```