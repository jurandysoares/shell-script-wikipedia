# shell-script-wikipedia

Material sobre shell script extraído, formatado e adaptado de [Wikipedia](https://pt.wikipedia.org/wiki/Shell_script).

Publicação: <https://mange.ifrn.edu.br/shell-script-wikipedia/>

## Índice do conteúdo

- [História](docs/01-historia.md)
- [Funcionalidades e Capacidades](docs/02-funcionalidades-e-capacidades.md)
- [Selecionar Shell](docs/03-selecionar-shell.md)
- [Comentários](docs/04-comentarios.md)
- [Variáveis](docs/05-variaveis.md)
- [Variáveis Pré-definidas](docs/06-variaveis-pre-definidas.md)
- [Variáveis Globais](docs/07-variaveis-globais.md)
- [Array](docs/08-array.md)
- [Chamar variáveis](docs/09-chamar-variaveis.md)
- [Remover Variáveis](docs/10-remover-variaveis.md)
- [If](docs/11-if.md)
- [If-else](docs/12-if-else.md)
- [Else-if](docs/13-else-if.md)
- [Case](docs/14-case.md)
- [Expressões Regulares](docs/15-expressoes-regulares.md)
- [Operadores](docs/16-operadores.md)
- [Operadores Aritméticos](docs/17-operadores-aritmeticos.md)
- [Operadores Booleanos](docs/18-operadores-booleanos.md)
- [Operadores para Teste de Arquivos](docs/19-operadores-para-teste-de-arquivos.md)
- [Operadores Relacionais](docs/20-operadores-relacionais.md)
- [Operadores de String](docs/21-operadores-de-string.md)
- [Loop](docs/22-loop.md)
- [For](docs/23-for.md)
- [While](docs/24-while.md)
- [Funções](docs/25-funcoes.md)
- [Status de saída](docs/26-status-de-saida.md)
- [Exemplos de uso](docs/27-exemplos-de-uso.md)
- [Criar Shell script](docs/28-criar-shell-script.md)
- [Verificar parâmetros de linha de comando](docs/29-verificar-parametros-de-linha-de-comando.md)
- [Apagar arquivos antigos](docs/30-apagar-arquivos-antigos.md)
- [Veja também](docs/31-veja-tambem.md)

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
3. O comando `make latexpdf` irá gerar a versão PDF da documentação no arquivo `./docs/_build/latex/shell-script-wikipedia.pdf`[^2].

[^1]: Em algumas distribuições Linux, ela está disponível no pacote `python3-venv` ou `py3-venv`.
[^2]: Em distribuições Debian/Ubuntu, instale antes o pacote `texlive-full`, que ocupa entre 4GB a 5GB de espaço em disco.

