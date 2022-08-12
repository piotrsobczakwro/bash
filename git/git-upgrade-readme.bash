#/bin/bash
pwd
cd ..
pwd
files=$(git ls-files)

echo "" > README.md

for files_to_readme in $files
do 
  echo "[+] Adding: $files_to_readme files to README.md" 
  echo "[$files_to_readme](https://github.com/piotrsobczakwro/bash/blob/main/$files_to_readme)  " >> README.md
done