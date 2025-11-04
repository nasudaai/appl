if grep -q $(date "+%Y-%m-%d") "file.txt" ; then echo "date"; else echo "time"; fi; 
