#/bin/bash

files=$(git ls-files)

echo "" > ../README.md

for files_to_readme in ${files}
do 
  echo "[${files_to_readme}](https://github.com/piotrsobczakwro/bash/blob/main/git/${files_to_readme})  " >> ../README.md
done