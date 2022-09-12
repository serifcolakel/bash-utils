find . -type f -name '*İ*.*' -print0 | while IFS= read -r -d '' file; do
   a=$(echo "$file" | sed 's/İ/I/g')
   a="${file//İ/I}" # replace İ with I
   echo -n "$file "  # print the old name
   echo $a  # echo the new name
   mv $file $a # move to new name
 done
sleep 1