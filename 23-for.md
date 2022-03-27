(for)=
        
# For

Esse tipo de loop funciona da mesma forma para ambos **Bash** e **sh**.

```bash
# Irá executar echo "Test" 3 vezes
for i in 1 2 3
do
    echo "Test"
done

# Em apenas uma linha
for i in 1 2 3; do echo "Test"; done

# Números ímpares de 1 a 20
for j in $(seq 1 2 20)
do
    echo $j
done

# Números ímpares de 1 a 20
for j in {1..20..2}
do
    echo $j
done

for ((j=1; j<20; j+=2))
do
    echo $j
done
```
