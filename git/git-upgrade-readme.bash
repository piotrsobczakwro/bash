#/bin/bash

files=$(git ls-files)

for files_to_readme in ${files}
do 
  echo "[${files_to_readme}](https://github.com/piotrsobczakwro/bash/tree/main/${files_to_readme})" > ../README.md
done