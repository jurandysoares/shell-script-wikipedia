(criar-shell-script)=
        
# Criar Shell script

Para criar um Shell script você precisa saber, antes, qual linguagem de script irá utilizar. Se for utilizar Bash,
por exemplo, basta criar um arquivo com a extensão `.sh` e colocar na primeira linha desse arquivo o *shebang* para bash.

Para distribuições Linux, abra o terminal e digite os seguintes comandos:

```bash
echo '#!/usr/bin/env bash' > novo_script.sh

```

E depois de criado você deve tornar o arquivo executável, utilizando o seguinte comando: 
- `chmod u+x novo_script`


