#grep -R "serif" ./text.txt
#grep -R "text" . | wc -l
#grep -rnw ~/abc/xyz -e "helloWorld"
#grep -rnw ./text.txt -e "helloWorld"
#grep -rnw ./*.txt -e "helloWorld" > ./result.txt
# https://stackoverflow.com/questions/14643531/changing-contents-of-a-file-through-shell-script
#grep -oe "^.:[^:]*" ./result.txt > ./result2.MD
#cat ./result.txt | cut -f1,0 -d ":"
# Create an empty file

read -p "Enter the tag string for search: " search
# Take the search string & set The file name

filename="./${search}.md"
# Check the file is exists or not
if [ -f $filename ]; then
   rm $filename
   echo "$filename is removed"
fi

#echo "${search}"
grep -rnw ./*.txt -e ${search} | sed '/$/ a\ \' > $filename
sleep 2 # Wait for 2 seconds for the file to be created

#sed -i "s/:/\/\/** :/" $filename
#sed -i "s/\(^.*\/\)/> **/" $filename
sed -i "s/\(^.*:[0-9].*\/\)/> **/" $filename  && sed -i "s/:/** :/" $filename && sed -i "s/ ${search} /${search}/" $filename
#sed -i "s/:/** :/" $filename
#sed -i "s/ TODO /TODO/" $filename


