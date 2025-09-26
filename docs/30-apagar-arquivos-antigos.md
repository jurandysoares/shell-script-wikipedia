(apagar-arquivos-antigos)=
        
# Apagar arquivos antigos

Apagar periodicamente arquivos mais velhos que 30 dias do diretório `/tmp`:


```bash
#!/usr/bin/env bash
cd /tmp
find . -type f -mtime +30 -delete
```

