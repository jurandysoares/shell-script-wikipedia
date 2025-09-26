(selecionar-shell)=
        
# Selecionar Shell

Para selecionar qual Shell será utilizado, use a combinação de hashtag (`#`) mais exclamação (`!`) e caminho do
executável na primeira linha do arquivo script. Isso é conhecido como Shebang.

- Para declarar que o script deve ser interpretado por Bourne Shell (sh), a primeira linha será escrita da seguinte maneira:

  ```sh
  #!/bin/sh
  ```

- Para declarar que o script deve ser interpretado por Bourne-Again shell (Bash), é recomendável a utilização do comando `env`, pelo fato que apesar de o Bash já vir instalado em muitas distribuições Linux, não sabemos ao certo se ele estará em todas elas no mesmo diretório `/bin/`. Então use a seguinte maneira:
  
  ```sh
  #!/usr/bin/env bash
  ```
