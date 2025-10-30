#!/bin/bash


first_line=$(head -n 1 $1)

if [ -s $1 ]; then

    if [[ ! $first_line =~ ^#! ]]; then

        sed -i '1i #!/bin/bash' $1
        echo "行頭に挿入しました"
    else
        
        echo "shebang added to $1"
    fi

else   

    echo "#!/bin/bash" >> $1
fi

cat $1
