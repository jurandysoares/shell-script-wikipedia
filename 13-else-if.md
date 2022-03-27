(else-if)=
        
# Else-if

Declaração **else if** para scripts em **bash** ou **sh** são diferentes de algumas linguagens de programação, exemplo:

```bash
if [ $3 ]; then
    echo "$3"
elif [ $2 ]; then
    echo "$2"
else
    echo "$1"
fi
```
