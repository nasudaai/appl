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

main.sh
```
#!/bin/bash

source ./name.sh
```