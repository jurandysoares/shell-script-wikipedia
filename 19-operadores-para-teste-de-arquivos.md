(operadores-para-teste-de-arquivos)=
        
# Operadores para Teste de Arquivos

 | Operadores | Descrição                                                                                                                            | Exemplos                  |
 | ---------- | ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------- |
 | `-b`       | Verifica se o arquivo é um arquivo especial de bloco; se sim, então a condição se torna verdadeira.                                  | `[ -b /etc/resolv.conf ]` |
 | `-c`       | Verifica se o arquivo é um arquivo especial de caracteres; se sim, então a condição se torna verdadeira.                             | `[ -c /etc/resolv.conf ]` |
 | `-d`       | Verifica se o arquivo é um diretório; se sim, então a condição se torna verdadeira                                                   | `[ -d /etc/resolv.conf ]` |
 | `-f`       | Verifica se arquivo é um arquivo comum em oposição a um diretório ou arquivo especial; se sim, então a condição se torna verdadeira. | `[ -f /etc/resolv.conf ]` |
 | `-g`       | Verifica se o arquivo possui o seu conjunto de bits de identificação de grupo (SGID); se sim, então a condição se torna verdadeira.  | `[ -g /etc/resolv.conf ]` |
 | `-k`       | Verifica se o arquivo tem seu bit fixo definido; se sim, então a condição se torna verdadeira.                                       | `[ -k /etc/resolv.conf ]` |
 | `-p`       | Verifica se o arquivo é um pipe nomeado; se sim, então a condição se torna verdadeira.                                               | `[ -p /etc/resolv.conf ]` |
 | `-t`       | Verifica se o descritor de arquivo está aberto e associado a um terminal; se sim, então a condição se torna verdadeira.              | `[ -t /etc/resolv.conf ]` |
 | `-u`       | Verifica se o arquivo tem seu bit Set ID do usuário (SUID) definido; se sim, então a condição se torna verdadeira.                   | `[ -u /etc/resolv.conf ]` |
 | `-r`       | Verifica se o arquivo está legível; se sim, então a condição se torna verdadeira.                                                    | `[ -r /etc/resolv.conf ]` |
 | `-w`       | Verifica se o arquivo é gravável; se sim, então a condição se torna verdadeira.                                                      | `[ -w /etc/resolv.conf ]` |
 | `-x`       | Verifica se o arquivo é executável; se sim, então a condição se torna verdadeira.                                                    | `[ -x /etc/resolv.conf ]` |
 | `-s`       | Verifica se o arquivo tem tamanho maior que 0; se sim, então a condição se torna verdadeira.                                         | `[ -s /etc/resolv.conf ]` |
 | `-e`       | Verifica se o arquivo existe; é verdadeiro mesmo se o arquivo for um diretório, mas existe.                                          | `[ -e /etc/resolv.conf ]` |

