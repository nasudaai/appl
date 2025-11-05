#!/bin/bash

filename=$1

if [ ! -e "$filename" ]; then

    echo '#!/bin/bash' >> "$filename"
    chmod +x "$filename"
    ls -l "$filename"

else

    echo "file with the same name already exists."

fi    
    
