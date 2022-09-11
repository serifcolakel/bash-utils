#grep -R "serif" ./text.txt
#grep -R "text" . | wc -l
#grep -rnw ~/abc/xyz -e "helloWorld"
#grep -rnw ./text.txt -e "helloWorld"
#grep -rnw ./*.txt -e "helloWorld" > ./result.txt
# https://stackoverflow.com/questions/14643531/changing-contents-of-a-file-through-shell-script
#grep -oe "^.:[^:]*" ./result.txt > ./result2.MD
#cat ./result.txt | cut -f1,0 -d ":"
# Create an empty file

# Take the search string & set The file name


filename="./README2.md"
sed -i "s/^.*## Roadmap [çÇıİöÖşŞüÜğĞa-zA-Z ].*## Contributing/SERIFCOLAKEL/" $filename
#sed -i "s/\(^.## Roadmap.*\Contributing)/> **/" $filename 
#sed -i "s/\(^.*:[0-9].*\/\)/> **/" $filename  && sed -i "s/:/** :/" $filename && sed -i "s/ ${search} /${search}/" $filename
#sed -i "s/:/** :/" $filename



