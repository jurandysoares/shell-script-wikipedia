# shell-script-wikipedia

Material sobre shell script extraído, formatado e adaptado de [Wikipedia](https://pt.wikipedia.org/wiki/Shell_script).

Publicação: \<<https://mange.ifrn.edu.br/shell-script-wikipedia/>\>

## Geração e teste da documentação

Certifique-se de que:

1. O comando `make` esteja disponível em seu sistema operacional,
2. O interpretador do Python esteja instalado e no `PATH`, e
3. A biblioteca `venv` do Python esteja instalada[^1].

No Linux, execute o comando `make` e veja os subcomandos disponíveis. Exemplo:

1. `make htmllive`
2. `make html`
3. `make latexpdf`

Breve explicação:

1. O comando `make htmllive` permitirá você visualizar em tempo real a documentação no formato HTML. Isto permite que você faça as alterações, adaptações ou correções no código fonte e já veja o resultado;
2. O comando `make html` irá gerá a versão HTML da documentação no diretório `./docs/_build/html`;
3. O comando `make latexpdf` irá gerar a versão PDF da documentação no arquivo `./docs/_build/latex/shell-script-wikipedia.pdf`.

[^1]: Em algumas distribuições Linux, ela está disponível no pacote `python3-venv` ou `py3-venv`.