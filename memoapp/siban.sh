#!/bin/bash

if [ -s $1 ]; then

   sed -i '1i #!/bin/bash' $1
   echo "file は存在します"

else   

    echo "#!/bin/bash" >> $1
fi

cat $1
