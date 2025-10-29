# memo

`read -p arg`
`echo "input"; read arg `
`printf "output\n"`

`echo '{ #!/bin/bash'; cat file; }  > tmp && mv tmp file`

name.sh
```
#!/bin/bash#!/bin/bash

if [ -z "${BASH_SOURCE[1]}" ]; then


    echo "${BASH_SOURCE} $?"

else


    echo "$0 called ${BASH_SOURCE} . :$?"

fi
```

main.sh
```
#!/bin/bash

source ./name.sh
```

## 行頭がシバンか確認する

```
if head -n 1 "$file" | grep -q '^#!'; then
  echo "Shebang already exists in $file"
else
  sed -i '1i#!/bin/bash' "$file"
  echo "Shebang added to $file"
fi
```

```
first_line=$(head -n 1 "$file")

case "$first_line" in
  "#!"*)
    echo "Shebang already exists in $file"
    ;;
  *)
    sed -i '1i#!/bin/bash' "$file"
    echo "Shebang added to $file"
    ;;
esac


```
