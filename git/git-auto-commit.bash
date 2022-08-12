#/bin/bash

# Script: git-automatic-commit.sh 

echo "Executing script: $0"

# Can be shorten as git pull 
git pull >/dev/null

# Upgrade README.md
source git-update-readme.bash

files=$(git status --short | awk {'print $2'})

for single_file in ${files}; 
do 
  echo "[+] Commiting: $single_file"
  git add "$single_file" 
  git commit -m "Changes in file: $single_file" >/dev/null
  echo "[+] Current commit: $(git rev-parse --verify HEAD)"
  git push >/dev/null
  echo "[+] Pushed to repository exit:$?"
done